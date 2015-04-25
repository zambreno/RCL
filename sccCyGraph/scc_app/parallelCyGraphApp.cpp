#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <fstream>
#include <queue>
#include <algorithm>
#include <sys/time.h>

using namespace std;

#undef DEBUG
#define DEBUG 1

typedef unsigned long long uint64;
typedef long long int64;

#ifdef __CONVEY
	#include <convey/usr/cny_comp.h>
	extern "C" long int cpCyGraph();
	extern "C" long int cpIntersection();

	cny_image_t sig;
	cny_image_t sig2;
	int stat;
	char sig_name[] = "parallelCyGraph";
#endif

uint64	cnyBFS(
			uint *cyGraphData, uint64 *cyGraphInfo, uint64 *reachQueue,
			uint N, uint nonZeroCount, uint root);
void	cnySCC(uint64 *results,
			uint *cyGraphData, uint64 *cyGraphInfo,
			uint *cyrGraphData, uint64 *cyrGraphInfo,
			uint N, uint nonZeroCount, uint color);
int64	cnyIntersectionRecover(uint64 *sccColor,
			uint64 *graphInfo, uint64 *rGraphInfo,
			uint N, uint color);
uint	cpuBFS(
			uint *graphData, uint64 *graphInfo, queue<uint>& reachQueue,
			uint root);
void	cpuSCC(uint64 *results,
			uint *graphData, uint64 *graphInfo,
			uint *rGraphData, uint64 *rGraphInfo,
			uint N, uint nonZeroCount, uint color);
int64	cpuIntersectionRecover(uint64 *sccColor,
			uint64 *graphInfo, uint64 *rGraphInfo,
			queue <uint>&FW, queue <uint>&BW,
			uint N, uint color);
uint	trim(uint64 *sccColor,
			uint64 *graphInfo, uint64 *rGraphInfo,
			uint N, uint color);
void	compareVectors(
			uint64 *v1, uint64 *v2, uint N);
void 	compareSCC(
			uint64 *s1, uint64 *s2, uint N);
void	compareGraphInfo(
			uint64 *graphInfo, uint64 *cyGraphInfo, uint N);
double	timeDiff(
			struct timeval startTime,struct timeval endTime);
bool	pairCompare(
			const pair<uint, uint>& firstElem,
			const pair<uint, uint>& secondElem);
void	printHexVector(string str, uint64 *v, uint64 N);
void	printDecVector(string str, uint64 *v, uint64 N);

int PRINT_DEBUG = 0;
ofstream logFile;


// Declare Convey variables
uint64 *cyGraphCurrent, *cyGraphNext;
uint64 *FW, *BW;
uint64 fw_count, bw_count;

// Declare CPU variables
queue <uint64> graphCurrent, graphNext;
queue <uint> cpuFW, cpuBW;

// Help timing variables
double cny_bfs_time = 0, cny_inter_time = 0, cny_trim_time = 0;
double cpu_bfs_time = 0, cpu_inter_time = 0, cpu_trim_time = 0;
double cny_copy_time = 0, cny_setup_time = 0;
double searchTime = 0;
struct timeval startTime, endTime;
struct timeval searchStartTime, searchEndTime;

int main(int argc, char *argv[]) {

	// Declare file pointers, and other variables
	FILE * fp;
	uint M, N, nonZeroCount;
	uint i, j;
	uint count = 0;
	struct timeval setupStartTime, setupEndTime;
	struct timeval conveyStartTime, conveyEndTime;
	struct timeval cpuStartTime, cpuEndTime;
	vector <pair <uint, uint> > reversedEdges;

	// check command line args
	cout << "Usage: parallelCyGraph <graphFile> [d]" << endl;
	if (argc < 2) {
		return 0;
	}
	if (argc >= 3 && strcmp(argv[2], "d") == 0) {
		PRINT_DEBUG = 1;
	}

	// Get personality signature
	#ifdef __CONVEY
		if (cny_get_signature)
			cny_get_signature(sig_name, &sig, &sig2, &stat);
		else
			fprintf(stderr, "ERROR: cny_get_signature not found\n");

		if (stat) {
			cout << "ERROR: cny_get_signature() Failure: " << stat << endl; 
			exit(1);
		}

		// // check interleave, this example requires binary interleave
		// if (cny_cp_interleave() == CNY_MI_3131) {
		// 	printf("ERROR - interleave set to 3131, this personality requires binary interleave\n");
		// 	exit (1);
		// }
	#endif

	//////////////////////////////////////////////////////////////
	// Setup (read graph, copy to convey memory)
	//////////////////////////////////////////////////////////////
	gettimeofday(&setupStartTime, NULL); // Record setup start time
	cout << endl;
	cout << "Start setup .." << endl;

	// Open graph file
	fp = fopen(argv[1], "r");
	if (fp == NULL) {
		cout << "Error: can't open graph file!" << endl;
		exit(1);
	}

	// Open log file
	#ifdef __CONVEY
		logFile.open("flog.txt");
		if (!logFile.is_open()) {
			cout << "Error: can't open log file!" << endl;
			exit(1);
		}
	#endif

	// Read and spare the first line to get M, N, and number of non zeros
	fscanf(fp, "%u %u %u", &M, &N, &nonZeroCount);
	if (M != N) {
		cout << "Error: graph is asymmetric!" << endl;
		exit(1);
	} else {
		cout << "Graph is symmetric of size: " << M << " and " << nonZeroCount << " non-zeros" << endl;
	}

	//////////////////////////////////////////////////////////////
	// Allocate Memory on CPU/Convey
	//////////////////////////////////////////////////////////////
	// Allocate memory for graph vectors on CPU
	unsigned int *graphData    	= (unsigned int*) malloc(nonZeroCount * sizeof(unsigned int));
	unsigned int *graphIndices 	= (unsigned int*) malloc((N + 1) * sizeof(unsigned int));
	uint64 *graphInfo 			= (uint64*) malloc((N + 1) * sizeof(uint64));

	// Allocate memory for the reversed graph on CPU
	unsigned int *rGraphData    = (unsigned int*) malloc(nonZeroCount * sizeof(unsigned int));
	unsigned int *rGraphIndices = (unsigned int*) malloc((N + 1) * sizeof(unsigned int));
	uint64 *rGraphInfo 			= (uint64*) malloc((N + 1) * sizeof(uint64));

	// Allocate memory for SCC results
	uint64 *sccCpuColor			= (uint64*) malloc((N + 1) * sizeof(uint64));

	// Allocate memory for graph vectors on Convey
	#ifdef __CONVEY
		cout << "Allocating convey memory .." << endl;
		// Graph vectors
		unsigned int *cyGraphData	= (unsigned int*) cny_cp_malloc(nonZeroCount * sizeof(unsigned int));
		uint64 *cyGraphInfo			= (uint64*) cny_cp_malloc((N + 1) * sizeof(uint64));
		// Reversed graphd vectors
		unsigned int *cyrGraphData	= (unsigned int*) cny_cp_malloc(nonZeroCount * sizeof(unsigned int));
		uint64 *cyrGraphInfo		= (uint64*) cny_cp_malloc((N + 1) * sizeof(uint64));
		// SCC results, stored on host CPU
		uint64 *sccCnyColor			= (uint64*) malloc((N + 1) * sizeof(uint64));

		// allocate memory for BFS next/current queue
		cyGraphCurrent	= (uint64*) cny_cp_malloc((nonZeroCount + 1) * sizeof(uint64));
		cyGraphNext	= (uint64*) cny_cp_malloc((nonZeroCount + 1) *  sizeof(uint64));

		// reserve queues for SCC (Forward/Backward reachability)
		FW = (uint64*) cny_cp_malloc(8 * (nonZeroCount + 1) * sizeof(uint64));
		BW = (uint64*) cny_cp_malloc(8 * (nonZeroCount + 1) * sizeof(uint64));

		logFile << "Graph pointers:" << endl;
		logFile << "cyGraphData Pointer is: " << hex << cyGraphData << dec << endl;
		logFile << "cyGraphInfo Pointer is: " << hex << cyGraphInfo << dec << endl;

		logFile << endl;
		logFile << "Reversed Graph pointers:" << endl;;
		logFile << "cyrGraphData Pointer is: " << hex << cyrGraphData << dec << endl;
		logFile << "cyrGraphInfo Pointer is: " << hex << cyrGraphInfo << dec << endl;

		logFile << endl;
		logFile << "FW reachQueue Pointer is: " << hex << FW << dec << endl;
		logFile << "BW reachQueue Pointer is: " << hex << BW << dec << endl;

		cout << "Convey memory allocated" << endl;
	#endif

	unsigned int prev_i = 0;
	graphIndices[0] = 0;
	count = 0;

	int fscanfcount = 0;
	// read the graph data from file
	while(!feof(fp)) {
		// read a data tuple
		fscanfcount = fscanf(fp, "%u %u", &i, &j); 
		if (fscanfcount == 2) {
			// is different node?
			for (unsigned int k = prev_i; k < i; k++) {
				graphIndices[k+1] = count;
			}
			// add neighbor
			graphData[count] = j;
			// add edge to the reversed graph
			reversedEdges.push_back(make_pair(j, i));

			count++;
			prev_i = i;
		} else {
			cout << "Error: invalid node format! Line: " << count + 1 << ", count read: " << fscanfcount << endl;
			break;
			//exit(1);
		}
	}
	// set the remaining node's data to "count"
	for (unsigned int k = i + 1; k < N + 1; k++) {
		graphIndices[k] = count;
	}
	
	// check count
	if (count != nonZeroCount) {
		printf ("Error: Number of actual non-zeros (%u) and what's read (%u) is different.\n", nonZeroCount, count);
		exit(1);
	}

	// sort reversed graph by second node
	sort(reversedEdges.begin(), reversedEdges.end(), pairCompare);
	// copy reversed graph to memory
	prev_i = 0;
	rGraphIndices[0] = 0;
	count = 0;
	for (vector<pair<unsigned int, unsigned int> >::const_iterator e = reversedEdges.begin(); e != reversedEdges.end(); ++e) {
		uint i = e->first;
		uint j = e->second;
		
		// is different node?
		for (unsigned int k = prev_i; k < i; k++) {
			rGraphIndices[k+1] = count;
		}
		// add neighbor
		rGraphData[count] = j;
		count++;
		prev_i = i;
	}
	// set the remaining node's data to "count"
	for (unsigned int k = i + 1; k < N + 1; k++) {
		rGraphIndices[k] = count;
	}

	// converting graphIndices to graphInfo
	for (int k = 0; k < N+1; k++) {
		// graphInfo = neigh_start_index (32 bit) | neighbours_count (31 bit) | visited_flag (1 bit)
		uint64 index = ((uint64) graphIndices[k]);
		uint64 size =  ((uint64) graphIndices[k+1] - index) & 0x7fffffff;
		graphInfo[k] = (index << 32) | (size << 1);

		index = ((uint64) rGraphIndices[k]);
		size =  ((uint64) rGraphIndices[k+1] - index) & 0x7fffffff;
		rGraphInfo[k] = (index << 32) | (size << 1);

		// init
		sccCpuColor[k] = 0;
	}

	gettimeofday(&setupEndTime, NULL); // store the setup end time
	// Print setup time
	cout << "Setup Time: " << timeDiff(setupStartTime, setupEndTime) << " seconds" << endl;
	
	//////////////////////////////////////////////////////////////
	// Trim Step
	//////////////////////////////////////////////////////////////	
	gettimeofday(&startTime, NULL);
	uint color = trim(sccCpuColor, graphInfo, rGraphInfo, N, 1);
	gettimeofday(&endTime, NULL);
	cpu_trim_time = timeDiff(startTime, endTime);
	cout << "CPU trim time: " << cpu_trim_time << " seconds" << endl;
	
	//////////////////////////////////////////////////////////////
	// Copy data to Convey
	//////////////////////////////////////////////////////////////	
	#ifdef __CONVEY
		gettimeofday(&startTime, NULL);
		cny_cp_memcpy(cyGraphData, graphData, nonZeroCount * sizeof(uint));
		cny_cp_memcpy(cyrGraphData, rGraphData, nonZeroCount * sizeof(uint));
		cny_cp_memcpy(cyGraphInfo, graphInfo, (N+1) * sizeof(uint64));
		cny_cp_memcpy(cyrGraphInfo, rGraphInfo, (N+1) * sizeof(uint64));
		memcpy(sccCnyColor, sccCpuColor, (N+1) * sizeof(uint64));
		gettimeofday(&endTime, NULL);
		cny_setup_time = timeDiff(startTime, endTime);
		cout << "Convey Copy Time: " << cny_setup_time << " seconds" << endl;
	#endif
	cout << "Setup done .." << endl;

	//////////////////////////////////////////////////////////////
	// Call CyGraph (Convey)
	//////////////////////////////////////////////////////////////
	#ifdef __CONVEY
		cout << endl;
		cout << "Starting convey processing .." << endl;
		gettimeofday(&conveyStartTime, NULL); // Record Convey start time
		cnySCC(sccCnyColor,
			cyGraphData, cyGraphInfo,
			cyrGraphData, cyrGraphInfo,
			N, nonZeroCount, color);
		gettimeofday(&conveyEndTime, NULL); // Record Convey end time

		// Print Convey processing time
		cout << "Convey BFS time: " << cny_bfs_time << " seconds" << endl;
		cout << "Convey intersection time: " << cny_inter_time << " seconds" << endl;
		cout << "Convey search time: " << searchTime << " seconds" << endl;
		cout << "Convey total ime: " << timeDiff(conveyStartTime, conveyEndTime) << " seconds" << endl;
	#endif

	//////////////////////////////////////////////////////////////
	// Do the graph using CPU
	//////////////////////////////////////////////////////////////
	cout << endl;
	cout << "Starting CPU processing .. " << endl;
	gettimeofday(&cpuStartTime, NULL); // Record CPU start time
	cpuSCC(sccCpuColor,
		graphData, graphInfo,
		rGraphData, rGraphInfo,
		N, nonZeroCount, color);
	gettimeofday(&cpuEndTime, NULL); // Record CPU end time
	// printDecVector("\nCPU SCC", sccCpuColor, N);

	// Print CPU processing time
	cout << "CPU BFS time: " << cpu_bfs_time << " seconds" << endl;
	cout << "CPU intersection time: " << cpu_inter_time << " seconds" << endl;
	cout << "CPU total Time: " << timeDiff(cpuStartTime, cpuEndTime) << " seconds" << endl;

	//////////////////////////////////////////////////////////////
	// Print Results
	//////////////////////////////////////////////////////////////
	if (PRINT_DEBUG == 2) {	// IF DEBUG
		// Print CPU Results (graphLevels)
		cout << "CPU SCCs:    ";
		for(int k = 0; k < N; k++){
			cout << (int) sccCpuColor[k] << " ";
		}
		cout << endl;

		// print Convey Results (cyGraphLevels)
		#ifdef __CONVEY
			cout << "Convey SCCs: ";
			for(int k = 0; k < N; k++) {
				cout << (int) sccCnyColor[k] << " ";
			}
			cout << endl;
		#endif
	}

	// Compare CPU/Convey results
	#ifdef __CONVEY
		compareSCC(sccCpuColor, sccCnyColor, N);
	#endif
	
	//////////////////////////////////////////////////////////////
	// Free the precious convey memory and close the jars
	//////////////////	////////////////////////////////////////////
	#ifdef __CONVEY
		cny_cp_free(cyGraphData);
		cny_cp_free(cyGraphInfo);
		cny_cp_free(cyrGraphData);
		cny_cp_free(cyrGraphInfo);
		free(sccCnyColor);
		cny_cp_free(cyGraphCurrent);
		cny_cp_free(cyGraphNext);
		cny_cp_free(FW);
		cny_cp_free(BW);
		logFile.close();
	#endif
	
	free(graphData);
	free(graphIndices);
	free(graphInfo);
	free(rGraphData);
	free(rGraphInfo);
	free(sccCpuColor);

	fclose(fp);
	return 0;
}

// Do BFS in Convey and return the number of traversed nodes
inline uint64 cnyBFS(uint *cyGraphData, uint64 *cyGraphInfo, uint64 *reachQueue, uint N, uint nonZeroCount, uint root) {
	
	// Exit if this function isn't running on convey 
	#ifndef __CONVEY
		cout << "Error: cnyBFS called where convey coprocessor isn't available!" << endl;
		exit(1);
	#endif

	#ifdef __CONVEY
	// Init
	long cq_count = 1;
	uint64 current_level = 1;

	// // Print debug msg to flog.txt
	// if (PRINT_DEBUG == 1) {
	// 	logFile << endl;
	// 	logFile << "cyrGraphCurrent Pointer is: " << hex << cyGraphCurrent << dec << endl;
	// 	logFile << "cyrGraphNext Pointer is: " << hex << cyGraphNext << dec << endl;
	// }

	// Visit root node and push it to current queue
	uint64 root_csr = cyGraphInfo[root];
	cyGraphCurrent[0] = root_csr;
	cyGraphInfo[root] = root_csr | 1;
	reachQueue[0] = root;

	current_level ++;
	uint64 traversedNodesCount = (uint64) l_copcall_fmt (sig, cpCyGraph, "AAAAAAAA",
		(uint64) N, (uint64) nonZeroCount,
		cyGraphData, cyGraphInfo, cyGraphCurrent, cyGraphNext,
		reachQueue + 1, (uint64)cq_count
	);

	return traversedNodesCount;
	#endif
}

// Find the strongly connected components using Convey Platform
inline void cnySCC(uint64 *results,
	uint *cyGraphData, uint64 *cyGraphInfo,
	uint *cyrGraphData, uint64 *cyrGraphInfo,
	uint N, uint nonZeroCount, uint color) {

	// Exit if called outside of convey machine
	#ifndef __CONVEY
		cout << "Error: cnySCC called where convey coprocessor isn't available!" << endl;
		exit(1);
	#endif

	#ifdef __CONVEY
	// Pick random start node
	int64 v = 0;
	
	uint c = color;

	logFile << endl << "Starting CNY SCC .." << endl;
	// logFile << "Start node v = " << v << endl;
	// logFile << "Color = " << dec << c << endl;

	// // Print debugging msgs
	// if (PRINT_DEBUG == 2) {
	// 	cout << "Trim step: " << endl;
	// 	cout << "- SCC: ";
	// 	for (int i = 0; i < N; i++) {
	// 		cout << dec << results[i] << " ";
	// 	}
	// 	cout << endl;
	// }

	// While there is an unvisited node
	while (v >= 0) {
		// set v's color
		results[v] = c;

		logFile << endl << "New SCC iteration .." << endl;
		logFile << "Start node v = " << v << endl;
		logFile << "Color = " << dec << c << endl;
		// printDecVector("SCC", results, N);
		// printHexVector("Info", cyGraphInfo, N);
		// printHexVector("rInfo", cyrGraphInfo, N);

		// Record Convey BFS start time
		gettimeofday(&startTime, NULL);
		// BFS forward
		logFile << "Starting forward BFS .." << endl;
		// cpuBFS(cyGraphData, cyGraphInfo, cpuFW, (uint)v);
		//	fw_count = 0;
		//	FW[fw_count++] = v;
		//	while (!cpuFW.empty()) {
		//		uint node = cpuFW.front();
		//		cpuFW.pop();
		//		FW[fw_count] = node;
		//		fw_count++;
		//	}
		fw_count = cnyBFS(cyGraphData, cyGraphInfo, FW, N, nonZeroCount, (uint)v);   ////////////////// UNCOMMENT LATER
		logFile << "FW count: " << fw_count << endl;
		// printDecVector("FW Reach", FW, fw_count);
		// printHexVector("Info", cyGraphInfo, N);
		
		// BFS backword
		logFile << "Starting backward BFS .." << endl;
		if (fw_count <= 1) {
			bw_count = 0;
		} else {
			// cpuBFS(cyrGraphData, cyrGraphInfo, cpuBW, (uint)v);
			//	bw_count = 0;
			//	BW[bw_count++] = v;
			//	while (!cpuBW.empty()) {
			//		uint node = cpuBW.front();
			//		cpuBW.pop();
			//		BW[bw_count] = node;
			//		bw_count++;
			//	}
			bw_count = cnyBFS(cyrGraphData, cyrGraphInfo, BW, N, nonZeroCount, (uint)v); ////////////////// UNCOMMENT LATER
		}
		logFile << "BW count: " << bw_count << endl;
		// printDecVector("BW Reach", BW, bw_count);
		// printHexVector("rInfo", cyrGraphInfo, N);
		// Record Convey BFS start time
		gettimeofday(&endTime, NULL);
		cny_bfs_time += timeDiff(startTime, endTime);

		// Record cnyIntersectionRecover() start time
		gettimeofday(&startTime, NULL);
		// Intersection Recover
		// v = cnyIntersectionRecover(results, cyGraphInfo, cyrGraphInfo, FW, fw_count, BW, bw_count, N, color);
		logFile << endl << "Starting Intersection .." << endl;
		v = cnyIntersectionRecover(results, cyGraphInfo, cyrGraphInfo, N, c);
		// Record cnyIntersectionRecover() end time
		gettimeofday(&endTime, NULL);
		cny_inter_time += timeDiff(startTime, endTime);
		logFile << "Color = " << c << endl;
		logFile << "Next v = " << v << endl;
		// printDecVector("SCC", results, N);
		// printHexVector("Info", cyGraphInfo, N);
		// printHexVector("rInfo", cyrGraphInfo, N);
		if (v == 0 || v == -1) break;

		// // Print debugging msgs
		// if (PRINT_DEBUG == 1 && count++ >= 5) {
		// 	break;
		// }
		// if (PRINT_DEBUG == 1) {
		// 	// print graph info
		// 	cout << "- Graph:" << endl;
		// 	for (int i = 0; i < nonZeroCount; i++) {
		// 		cout << hex << cyGraphInfo[i] << " ";
		// 	}
		// 	cout << endl << "- rGraph:" << endl;
		// 	for (int i = 0; i < nonZeroCount; i++) {
		// 		cout << hex << cyrGraphInfo[i] << " ";
		// 	}
		// 	cout << endl << "- FW reach: " << dec;
		// 	for (int i = 0; i < fw_count; i++) {
		// 		cout << dec << FW[i] << " ";
		// 	}
		// 	cout << endl << "- BW reach: " << dec;
		// 	for (int i = 0; i < bw_count; i++) {
		// 		cout << dec << BW[i] << " ";
		// 	}
		// 	cout << endl << "- SCC: ";
		// 	for (int i = 0; i < N; i++) {
		// 		cout << dec << results[i] << " ";
		// 	}
		// 	cout << endl;
		// } // end debug msgs
		c++;
	}
	#endif
}

// Find the intersection between forward/backword traversals
inline int64 cnyIntersectionRecover(uint64 *sccColor,
	uint64 *graphInfo, uint64 *rGraphInfo,
	uint N, uint color
	) {

	// Exit if called outside of convey machine
	#ifndef __CONVEY
		cout << "Error: cnySCC called where convey coprocessor isn't available!" << endl;
		exit(1);
	#endif

	#ifdef __CONVEY	
	int64 nextStart = -1;

	if (fw_count > 1 || bw_count > 1) {
		nextStart = (int64) l_copcall_fmt (sig, cpIntersection, "AAAAAAAAA",
							sccColor, graphInfo, rGraphInfo,
							FW, fw_count, BW, bw_count,
							(uint64)color, (uint64) N);
	}

	logFile << "SCC Intersection HW returned with v = " << nextStart << endl;
	
	gettimeofday(&searchStartTime, NULL);
	// If couldn't find nextStart, search for one
	for (int i = 0; i < N & nextStart <= 0 ; i++) {
		if (sccColor[i] == 0) {
			nextStart = i;
			break;
		}
	}
	gettimeofday(&searchEndTime, NULL);
	searchTime += timeDiff(searchStartTime, searchEndTime);

	return nextStart;
	#endif
}

// Do BFS in CPU and return the number of traversed levels
inline uint cpuBFS(uint *graphData, uint64 *graphInfo, queue<uint>& reachQueue, uint root) {
	uint level = 0;

	// Add root to next queue and set its level to 1 (graphInfo = 0x11)
	graphNext.push(graphInfo[root]);
	if (PRINT_DEBUG == 2)
		printf("Level 1: %d\n", root);
	graphInfo[root] = graphInfo[root] | 0x1;

	// Traverse the graph
	while (!graphNext.empty()) {
		// pop next level into current level
		level ++;
		if (PRINT_DEBUG == 2)
			printf("Level %d: ", level + 1);
		swap(graphNext, graphCurrent);

		// Traverse current level
		while (!graphCurrent.empty()) {
			uint64 current = graphCurrent.front();
			uint64 neigh_count = (current & 0xffffffff) >> 1;
			uint64 neigh_index = (current >> 32) & 0xffffffff;
			graphCurrent.pop();

			for (uint64 k = neigh_index; k < neigh_index + neigh_count; k++) {
 				// if neighbor is not visited, visit it and push it to next queue
				if ((graphInfo[graphData[k]] & 0x1) == 0) {
					if (PRINT_DEBUG == 2)
						cout << graphData[k] << " ";
					graphNext.push(graphInfo[graphData[k]]);
					reachQueue.push(graphData[k]);	// push to reachability queue
					graphInfo[graphData[k]] = graphInfo[graphData[k]] | 0x1;
				}
			}
			
		}
		if (PRINT_DEBUG == 2)
			cout << endl;
	}

	return level;
}

// Find the intersection between forward/backword traversals in CPU
inline int64 cpuIntersectionRecover(uint64 *sccColor,
	uint64 *graphInfo, uint64 *rGraphInfo,
	queue<uint>& FW, queue<uint>& BW,
	uint N, uint color
	) {

	int64 nextStart = -1;

	// loop on forward reachable nodes
	while (!FW.empty()) {
		uint v = FW.front();
		FW.pop();
		// if visited
		if ((rGraphInfo[v] & 0x1) == 1 && sccColor[v] == 0) {
			// color
			sccColor[v] = color;
		} else if (sccColor[v] == 0) {
			// recover
			graphInfo[v] = graphInfo[v] & (~0x1);
			// possible next start
			nextStart = (int64) v;
		}
	}

	// loop on backward reachable nodes
	while (!BW.empty()) {
		uint v = BW.front();
		BW.pop();
		// if visited
		if ((graphInfo[v] & 0x1) == 1 && sccColor[v] == 0) {
			// color
			sccColor[v] = color;
		} else if (sccColor[v] == 0) {
			// recover
			rGraphInfo[v] = rGraphInfo[v] & (~0x1);
			// possible next start
			nextStart = (int64) v;
		}
	}

	// If couldn't find nextStart, search for one
	for (int i = 0; i < N & nextStart == -1 ; i++) {
		if (sccColor[i] == 0) {
			nextStart = i;
			break;
		}
	}

	return nextStart;
}

// Find the strongly connected components using CPU
inline void cpuSCC(uint64 *results,
	uint *graphData, uint64 *graphInfo,
	uint *rGraphData, uint64 *rGraphInfo,
	uint N, uint nonZeroCount, uint color) {

	// Pick random start node
	int64 v = 0;

	uint c = color;

	// While there is an unvisited node
	while (v >= 0) {

		results[v] = c;

		// Record BFS start time
		gettimeofday(&startTime, NULL);
		// BFS forward
		cpuBFS(graphData, graphInfo, cpuFW, (uint)v);
		// BFS backword
		cpuBFS(rGraphData, rGraphInfo, cpuBW, (uint)v);
		// Record BFS end time
		gettimeofday(&endTime, NULL);
		cpu_bfs_time += timeDiff(startTime, endTime);

		// Record IntersectionRecover() start time
		gettimeofday(&startTime, NULL);
		// Intersection Recover
		v = cpuIntersectionRecover(results, graphInfo, rGraphInfo, cpuFW, cpuBW, N, c);
		// Record IntersectionRecover() end time
		gettimeofday(&endTime, NULL);
		cpu_inter_time += timeDiff(startTime, endTime);
		c++;
	}
}

// Trim all nodes that have zero out-degree or zero in-degree
inline uint trim(uint64 *sccColor, uint64 *graphInfo, uint64 *rGraphInfo, uint N, uint color) {
	// Color isolated nodes starting with color and return the next available color
	uint c = color;
	
	for (int i = 0; i < N; i++) {
		if ((graphInfo[i] & 0xFFFFFFFF) == 0 || (rGraphInfo[i] & 0xFFFFFFFF) == 0) {
			graphInfo[i] = 1;
			rGraphInfo[i] = 1;
			sccColor[i] = c;
			c++;
		}
	}

	return c;
}

// Compare two traversal vectors, print statistics
inline void compareGraphInfo(uint64 *graphInfo, uint64 *cyGraphInfo, uint N) {
	// I assume that the first is the correct one by the CPU
	uint correctCount = 0;
	uint incorrectCount = 0;
	uint visitCount = 0;
	uint correctVisitCount = 0;

	for (int k = 0; k < N; k++) {
		if (graphInfo[k] == cyGraphInfo[k])
			correctCount++;
		else
			incorrectCount++;

		if ((graphInfo[k] & 0x1) == (cyGraphInfo[k] & 0x1))
			correctVisitCount++;

		if ((graphInfo[k] & 0x1) == 1)
			visitCount++;
	}

	printf("\nCorrect answers: %d\n", correctCount);
	printf("Incorrect answers: %d\n", incorrectCount);
	printf("Correct level percentage: %f%%\n", (double)(correctCount)/(double)N*100.0);
	printf("Total visits: %d\n", visitCount); 
	printf("Correct visit percentage: %f%%\n\n", (double)(correctVisitCount)/N*100.0);
}

// Compare two vectors and print statistics
inline void compareVectors(uint64 *v1, uint64 *v2, uint N) {
	// I assume that the first is the correct one by the CPU
	uint correctCount = 0;
	
	for (int k = 0; k < N; k++) {
		if (v1[k] == v2[k])
			correctCount++;
	}

	printf("\nCorrect answers: %d\n", correctCount);
	printf("Incorrect answers: %d\n", N - correctCount);
	printf("Correctness percentage: %f%%\n", (double)(correctCount)/(double)N*100.0);
}

// Compare two SCC vectors and print statistics
inline void compareSCC(uint64 *s1, uint64 *s2, uint N) {
	// I assume that the first is the correct one by the CPU

	uint correctCount = 0;
	vector <uint64> colorkey;
	
	for (int k = 0; k < N; k++) {
		// if empty value, then wrong value, continue (because color > 0)
		if (s2[k] == 0) {
			continue;
		}

		// if colorkey doesn't contain s1[k] add it
		while (colorkey.size() < s1[k] + 1) {
			colorkey.push_back(0);
		}

		if (colorkey[s1[k]] == 0) {
			colorkey[s1[k]] = s2[k];
			correctCount++;
		} else if (colorkey[s1[k]] == s2[k]) {
			correctCount++;
		} else {
			colorkey[s1[k]] = s2[k];
		}
	}

	printf("\nCorrect answers: %d\n", correctCount);
	printf("Incorrect answers: %d\n", N - correctCount);
	printf("Correctness percentage: %f%%\n", (double)(correctCount)/(double)N*100.0);
}


// Find difference between start and end time in seconds
inline double timeDiff(struct timeval startTime,struct timeval endTime) {
	double diff = (endTime.tv_sec - startTime.tv_sec) + (endTime.tv_usec - startTime.tv_usec) / 1000000.0;
	return diff;
}

// Compare two pairs with the first item
inline bool pairCompare(const pair<unsigned int, unsigned int>& firstElem, const pair<unsigned int, unsigned int>& secondElem) {
	// This function returns true if the first pair is "less"
	// than the second one according to some metric
	// In this case, we say the first pair is "less" if the first element of the first pair
	// is less than the first element of the second pair
	return firstElem.first < secondElem.first;
}

void printHexVector(string str, uint64 *v, uint64 N) {
	logFile << str << ": ";
	for (int i = 0; i < N; i++) {
		logFile << hex << v[i] << " ";
	}
	logFile << dec << endl;
}

void printDecVector(string str, uint64 *v, uint64 N) {
	logFile << str << ": ";
	for (int i = 0; i < N; i++) {
		logFile << dec << v[i] << " ";
	}
	logFile << endl;
}

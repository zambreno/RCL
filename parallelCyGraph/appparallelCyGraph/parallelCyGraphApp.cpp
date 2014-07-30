#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <queue>
#include <algorithm>
#include <sys/time.h>

using namespace std;

#ifdef __CONVEY
	#include <convey/usr/cny_comp.h>
	extern "C" void cpCyGraph();

	cny_image_t sig;
	cny_image_t sig2;
	int stat;
	char sig_name[] = "parallelCyGraph";
#endif

#undef DEBUG
#define DEBUG 1

typedef unsigned long long uint64;
typedef long long int64;

void	cnyBFS(
			uint *cyGraphData, uint64 *cyGraphInfo,
			uint N, uint nonZeroCount, uint root);
uint	cpuBFS(
			uint *graphData, uint64 *graphInfo,
			uint root);
void	compareGraphInfo(
			uint64 *graphInfo, uint64 *cyGraphInfo, uint N);
double	timeDiff(
			struct timeval startTime,struct timeval endTime);
bool	pairCompare(
			const pair<unsigned int, unsigned int>& firstElem,
			const pair<unsigned int, unsigned int>& secondElem);

int PRINT_DEBUG = 0;
FILE * flog;
uint64 *cyGraphCurrent;
uint64 *cyGraphNext;

int main(int argc, char *argv[]) {

	// Declare file pointers, and other variables
	FILE * fp;
	unsigned int M, N, nonZeroCount;
	unsigned int i, j;
	unsigned int count = 0, level = 0;
	unsigned int root = 0;
	struct timeval setupStartTime, setupEndTime;
	struct timeval conveyStartTime, conveyEndTime;
	struct timeval cpuStartTime, cpuEndTime;

	// check command line args
	cout << "Usage: parallelCyGraph graphFile [root node] [d]" << endl;
	if (argc < 2) {
		return 0;
	}
	if (argc >= 3) {
		root = atoi(argv[2]);
	}
	if (argc >= 4 && strcmp(argv[3], "d") == 0) {
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

	// Open graph file
	fp = fopen(argv[1], "r");
	if (fp == NULL) {
		cout << "Error: can't open graph file!" << endl;
		exit(1);
	}

	// Open log file
	#ifdef __CONVEY
		flog = fopen("flog.txt", "w");
		if (flog == NULL) {
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

	// Check the root node
	if (root >= N) {
		cout << "Error: invalid root vertex!" << endl;
		exit(1);
	}
	cout << "Root node is: " << root << endl;

	//////////////////////////////////////////////////////////////
	// Allocate Memory on CPU/Convey
	//////////////////////////////////////////////////////////////
	// Allocate memory for graph vectors on CPU
	unsigned int *graphData    	= (unsigned int*) malloc(nonZeroCount * sizeof(unsigned int));
	unsigned int *graphIndices 	= (unsigned int*) malloc((N + 1) * sizeof(unsigned int));
	uint64 *graphInfo 			= (uint64*) malloc((N + 1) * sizeof(uint64));

	// Allocate memory for graph vectors on Convey
	#ifdef __CONVEY
		cout << "Allocating convey memory .." << endl;
		// Graph vectors
		unsigned int *cyGraphData	= (unsigned int*) cny_cp_malloc(nonZeroCount * sizeof(unsigned int));
		uint64 *cyGraphInfo			= (uint64*) cny_cp_malloc((N + 1) * sizeof(uint64));
		// allocate memory for next/current queue
		cyGraphCurrent	= (uint64*) cny_cp_malloc((nonZeroCount + 1) * sizeof(uint64));
		cyGraphNext	= (uint64*) cny_cp_malloc((nonZeroCount + 1) *  sizeof(uint64));

		fprintf(flog, "Graph pointers:\n");
		fprintf(flog, "cyGraphData Pointer is: %x\n", cyGraphData);
		fprintf(flog, "cyGraphInfo Pointer is: %x\n", cyGraphInfo);

		fprintf(flog, "\ncyrGraphCurrent Pointer is: %x\n", cyGraphCurrent);
		fprintf(flog, "cyrGraphNext Pointer is: %x\n", cyGraphNext);
		cout << "Convey memory allocated" << endl;
	#endif

	//////////////////////////////////////////////////////////////
	// Setup (read graph, copy to convey memory)
	//////////////////////////////////////////////////////////////
	gettimeofday(&setupStartTime, NULL); // Record setup start time
	cout << "Start setup .." << endl;
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
			#ifdef __CONVEY
			cyGraphData[count] = j;
			#endif

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

	// converting graphIndices to graphInfo
	for (int k = 0; k < N+1; k++) {
		// graphInfo = neigh_start_index (32 bit) | neighbours_count (31 bit) | visited_flag (1 bit)
		uint64 index = ((uint64) graphIndices[k]);
		uint64 size =  ((uint64) graphIndices[k+1] - index) & 0x7fffffff;
		graphInfo[k] = (index << 32) | (size << 1);
		#ifdef __CONVEY
		cyGraphInfo[k] = graphInfo[k];
		#endif
	}
	cout << "Setup done .." << endl;
	gettimeofday(&setupEndTime, NULL); // store the setup end time
	
	//////////////////////////////////////////////////////////////
	// Call CyGraph (Convey)
	//////////////////////////////////////////////////////////////
	#ifdef __CONVEY
		cout << "Starting convey processing .." << endl;
		gettimeofday(&conveyStartTime, NULL); // Record Convey start time
		cnyBFS(cyGraphData, cyGraphInfo, N, nonZeroCount, root);
		gettimeofday(&conveyEndTime, NULL); // Record Convey end time
	#endif

	//////////////////////////////////////////////////////////////
	// Do the graph using CPU
	//////////////////////////////////////////////////////////////
	cout << "Starting CPU processing .. " << endl;
	gettimeofday(&cpuStartTime, NULL); // Record CPU start time
	level = cpuBFS(graphData, graphInfo, root);
	gettimeofday(&cpuEndTime, NULL); // Record CPU end time

	//////////////////////////////////////////////////////////////
	// Print Results
	//////////////////////////////////////////////////////////////
	if (PRINT_DEBUG == 1) {	// IF DEBUG
		// Print CPU Results (graphLevels)
		printf("Graph Levels: ");
		for(int k = 0; k < N; k++){
			if ((graphInfo[k] & 0x1) == 1)
				printf("%d ", (int) (graphInfo[k] >> 1));
			else
				printf("0 ");
		}
		printf("\n");

		// print Convey Results (cyGraphLevels)
		#ifdef __CONVEY
			printf("CyGraph Levels: ");
			for(int k = 0; k < N; k++) {
				if (cyGraphInfo[k] & 0x1 == 1)
					printf("%d ", (int)(cyGraphInfo[k] >> 1));
				else
					printf("0 ");
			}
			printf("\n");
		#endif
	}

	// Print CPU processing time
	printf("\nSetup Time: %f seconds\n", timeDiff(setupStartTime, setupEndTime));
	printf("CPU Time: %f seconds\n", timeDiff(cpuStartTime, cpuEndTime));
	// Print Convey processing time
	#ifdef __CONVEY
		printf("Convey Time: %f seconds\n", timeDiff(conveyStartTime, conveyEndTime));
	#endif
	printf("Levels: %d\n", level);

	// Compare CPU/Convey results
	#ifdef __CONVEY
		compareGraphInfo(graphInfo, cyGraphInfo, N);
	#endif
	
	//////////////////////////////////////////////////////////////
	// Free the precious convey memory and close the jars
	//////////////////////////////////////////////////////////////
	#ifdef __CONVEY
		cny_cp_free(cyGraphData);
		cny_cp_free(cyGraphInfo);
		cny_cp_free(cyGraphCurrent);
		cny_cp_free(cyGraphNext);
		fclose(flog);
	#endif
	
	free(graphData);
	free(graphIndices);
	free(graphInfo);

	fclose(fp);
	return 0;
}

// Do BFS in Convey and return the number of traversed levels
inline void cnyBFS(uint *cyGraphData, uint64 *cyGraphInfo, uint N, uint nonZeroCount, uint root) {
	#ifdef __CONVEY
	// set the root node
	cyGraphCurrent[0] = cyGraphInfo[root];
	cyGraphInfo[root] = 3;
	
	long cq_count = 1;
	uint64 current_level = 1;

	current_level ++;
	// Call coprocessor for one level
	copcall_fmt (
		sig, cpCyGraph, "AAAAAAAA", (uint64) N, (uint64) nonZeroCount,
		cyGraphData, cyGraphInfo, cyGraphCurrent, cyGraphNext,
		current_level, (uint64)cq_count
	);
	#endif

	#ifndef __CONVEY
	printf ("Error: Convey isn't available!\n");
	exit(1);
	#endif
}

// Do BFS in CPU and return the number of traversed levels
inline uint cpuBFS(uint *graphData, uint64 *graphInfo, uint root) {
	uint level = 0;

	// declare Next/Current queues
	queue <uint64> graphCurrent, graphNext;
	// Add root to next queue and set its level to 1 (graphInfo = 0x11)
	graphNext.push(graphInfo[root]);
	if (PRINT_DEBUG == 1)
		printf("Level 1: %d\n", root);
	graphInfo[root] = 3;

	// Traverse the graph
	while (!graphNext.empty()) {
		// pop next level into current level
		level ++;
		if (PRINT_DEBUG == 1)
			printf("Level %d: ", level + 1);
		while (!graphNext.empty()) {
			graphCurrent.push(graphNext.front());
			graphNext.pop();
		}

		// Traverse current level
		while (!graphCurrent.empty()) {
			uint64 current = graphCurrent.front();
			uint64 neigh_count = (current & 0xffffffff) >> 1;
			uint64 neigh_index = (current >> 32) & 0xffffffff;
			graphCurrent.pop();

			for (uint64 k = neigh_index; k < neigh_index + neigh_count; k++) {
 				// if neighbor is not visited, visit it and push it to next queue
				if ((graphInfo[graphData[k]] & 0x1) == 0) {
					if (PRINT_DEBUG == 1)
						cout << graphData[k] << " ";
					graphNext.push(graphInfo[graphData[k]]);
					graphInfo[graphData[k]] = ((uint64) (level + 1)) * 2 + 1;
				}
			}
			
		}
		if (PRINT_DEBUG == 1)
			cout << endl;
	}

	return level;
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
	printf("Correct level percentage: %f%%\n", (double)(correctCount)/(double)N*100.0);
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

	.file	"cpparallelCyGraph.s"
	.ctext

# CyGraph Intersection
	.globl			cpIntersection
	.type			cpIntersection. @function
	.signature		pdk=65077
# cnyscc, cnyinfo, cnyrinfo, cnyfw, fw_count, cnybw, bw_count, N, color
cpIntersection:
	mov 	%a8 , 	$0, 	%aeg	# scc
	mov 	%a9 , 	$1, 	%aeg	# graphInfo
	mov		%a10, 	$2, 	%aeg	# reversed graphInfo
	mov 	%a11, 	$3, 	%aeg	# fw reach
	mov 	%a12, 	$4, 	%aeg	# fw_count
	mov 	%a13, 	$5, 	%aeg	# bw reach
	mov 	%a14,	$6, 	%aeg	# bw_count
	mov 	%a15, 	$7, 	%aeg	# color
	mov 	%a16, 	$8, 	%aeg	# N
	caep01	$0						# Call intersection
	fence
	mov.ae0	%aeg,	$9,		%a8		#return
	rtn

# CyGraph BFS
	.globl			cpCyGraph
	.type			cpCyGraph. @function
	.signature		pdk=65077
cpCyGraph:
	mov 	%a8 , 	$0, 	%aeg	# N (uint64)
	mov 	%a9 , 	$1, 	%aeg	# non-zeros count (uint64)
	mov		%a10, 	$2, 	%aeg	# graphData pointer (int)
	mov 	%a11, 	$3, 	%aeg	# graphInfo pointer (uint64)
	mov 	%a12, 	$4, 	%aeg	# current_queue pointer (uint64)
	mov 	%a13, 	$5, 	%aeg	# next_queue pointer (uint64)
	##
	#mov 	%a14, 	$6, 	%aeg	# Current Level (uint64)
	mov 	%a14,	$6, 	%aeg	# Reachability queue pointer
	mov 	%a15, 	$7, 	%aeg	# CQ count (uint64)
loop:
	caep00 	$0
	mov.ae0 %aeg, 	$8, 	%a8 	# get nq_count from aeg[8]
	mov.ae0 %a8 , 	$7, 	%aeg	# mov nq_count to CQ count (uint64)
	add.uq	%a15, 	%a8, 	%a15 	# reach_count = reach_count + nq_count
	# switch current/next queues 
	mov 	%a12, 	%a17			# mov current queue pointer to temp
	mov 	%a13, 	%a12			# mov next queue pointer to current queue
	mov 	%a17, 	%a13			# mov temp to next queue pointer
	mov 	%a12, 	$4, 	%aeg	# graphCurrent queue pointer (uint64) to aeg
	mov 	%a13, 	$5, 	%aeg	# graphNext queue pointer (uint64) to aeg
	# Calculate reach_queue pointer
	shfl.uq	%a8,	$3,		%a8		# nq_count = nq_count << 3 = nq_count * 8
	add.uq	%a14, 	%a8,	%a14	# reach_queue = reach_queue + nq_count * 8
	mov 	%a14,	$6, 	%aeg	# Reachability queue pointer
	# Calculate current_level
	#add.uq	%a14, 	$1, 	%a14	# increment current level
	#mov 	%a14, 	$6, 	%aeg	# mov Current Level (uint64) to aeg[6]
	fence
	# Branch if nq_count > 0
	cmp.uq 	%a8 , 	$0, 	%ac0 	# compare nq_count and 0
	br		%ac0.gt, loop			# loop if nq_count > 0
	mov 	%a15, %a8 				# return reach_count
	rtn

	.cend
	
#TODO: add function
#TODO: name function
#   .globl functionName
#   .type functionName. @function
#   .signature pdk=65777
#TODO: pass arguments using mov
#TODO: call custom instruction
#TODO: return value using mov
#   rtn

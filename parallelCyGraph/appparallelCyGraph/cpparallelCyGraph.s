	.file	"cpparallelCyGraph.s"
	.ctext

	.globl		cpCyGraph
	.type		cpCyGraph. @function
	.signature	pdk=65077
cpCyGraph:
	mov 	%a8 , $0, %aeg	# N (uint64)
	mov 	%a9 , $1, %aeg	# non-zeros count (uint64)
	mov		%a10, $2, %aeg	# graphData pointer (int)
	mov 	%a11, $3, %aeg	# graphInfo pointer (uint64)
	mov 	%a12, $4, %aeg	# graphCurrent queue pointer (uint64)
	mov 	%a13, $5, %aeg	# graphNext queue pointer (uint64)
	##
	mov 	%a14, $6, %aeg	# Current Level (uint64)
	mov 	%a15, $7, %aeg	# CQ count (uint64)
loop:
	caep00 	$0
	# mov.ae0 %aeg, $8, %a8	# return NQ count = mov aeg[8] to A8
	mov.ae0 %aeg, $8, %a8 	# get nq_count
	mov 	%a8 , $7, %aeg	# move nq_count to CQ count (uint64)
	add.uq	%a14, $1, %a14	# increment current level
	mov 	%a14, $6, %aeg	# move Current Level (uint64) to aeg
	mov 	%a12, %a16		# move current queue pointer to temp
	mov 	%a13, %a12		# move next queue pointer to current queue
	mov 	%a16, %a13		# move temp to next queue pointer
	mov 	%a12, $4, %aeg	# graphCurrent queue pointer (uint64) to aeg
	mov 	%a13, $5, %aeg	# graphNext queue pointer (uint64) to aeg
	cmp.uq 	%a8 , $0, %ac0 	# compare nq_count and 0
	br %ac0.gt, loop		# loop if nq_count > 0
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

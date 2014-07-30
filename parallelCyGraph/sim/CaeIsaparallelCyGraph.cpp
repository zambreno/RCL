#include "CaeSim.h"
#include "CaeIsa.h"
#include <stdio.h>
#include <iostream>

#define MAX_AEG_INDEX 128
#define PERS_SIGN_CAE          0xfe35001000101000LL

#define AEUIE 0
#undef DEBUG

#ifndef MC_XBAR
#define MC_XBAR 0
#endif

void
CCaeIsa::InitPers()
{
    SetAegCnt(MAX_AEG_INDEX);
    SetPersSign(PERS_SIGN_CAE);
}

void
CCaeIsa::CaepInst(int aeId, int opcode, int immed, uint32 inst, uint64 scalar) // F7,0,20-3F
{
    switch (opcode) {
        case 0x20: 
            cout << "Hello World from emulated ae" << aeId << endl;
	        break;
	    default:
	        printf("Default case hit - opcode = %x\n", opcode);
	        for (int aeId = 0; aeId < CAE_AE_CNT; aeId += 1)
		        SetException(aeId, AEUIE);
	    
    }
}


#include "types.h"
#include "cpu.h"
#include "xlHeap.h"
#include "system.h"
#include "tree.h"

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuExecuteUpdate.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_DSLLV.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_DSRLV.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_DSRAV.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_DMULT.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_DMULTU.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_DDIV.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_DDIVU.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_S_SQRT.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_D_SQRT.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_W_CVT_SD.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_L_CVT_SD.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_CEIL_W.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_FLOOR_W.s")

#ifdef NON_MATCHING
s32 cpuCompile_LB(cpu_class_t *cpu, void **out_func) {
    u32 *buf;

    if(!xlHeapTake((void*)&buf, 0x3000002C)) {
        return 0;
    }

    *out_func = buf;
    buf[0] = 0x54c6103a;
    buf[1] = 0x38e3 | ((u32)(&cpu->devices) - (u32)cpu);
    buf[2] = 0x7cc6382e;
    buf[3] = 0x80e60008;
    buf[4] = 0x7ca53a14;
    buf[5] = 0x80e60004;
    buf[6] = 0x80e70004;
    buf[7] = 0x7ca538ae;
    buf[8] = 0x7ca50774;
    buf[9] = 0x4e800020;
    DCStoreRange(buf, 0x28);
    ICInvalidateRange(buf, 0x28);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_LB.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_LH.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_LW.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_LBU.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_LHU.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_SB.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_SH.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_SW.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_LDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_SDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_LWL.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuCompile_LWR.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuExecuteOpcode.s")

s32 cpuExecuteUpdate(cpu_class_t *cpu, void **dst, u32 tick);
s32 videoForceRetrace(void *video);
u32 OSGetTick(void);

void *cpuExecuteIdle(cpu_class_t *cpu, u32 tick, u32 pc, void *lr) {
    rom_class_t *rom = gSystem->rom;
    tick = OSGetTick();

    if(cpu->unk_0x24) {
        cpu->status |= 8;
    } else {
        cpu->status &= ~8;
    }

    cpu->n64_pc = pc;
    cpu->status |= 0x80;
    if(!(cpu->status & 0x40) && rom->unk_19A34 == 0) {
        videoForceRetrace(gSystem->video);
    }

    if(!cpuExecuteUpdate(cpu, (void**)&lr, tick)) {
        return NULL;
    }
    
    cpu->tick = OSGetTick();
    return lr;
}

void *cpuExecuteJump(cpu_class_t *cpu, u32 tick, u32 pc, void *lr) {
    tick = OSGetTick();

    if(cpu->unk_0x24) {
        cpu->status |= 8;
    } else {
        cpu->status &= ~8;
    }

    cpu->n64_pc = pc;
    cpu->status |= 4;

    if(!cpuExecuteUpdate(cpu, &lr, tick)) {
        return NULL;
    }

    cpu->tick = OSGetTick();
    return lr;
}

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuExecuteCall.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuExecute_LoadStore.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuExecuteLoadStoreF.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuMakeLink.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuExecute.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/func_8003C614.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/func_8003C708.s")

s32 cpuSetGetBlock(cpu_class_t *cpu, cpu_dev_t *dev, void *func) {
    dev->get_block = func;
    return 1;
}

s32 cpuSetDeviceGet(cpu_class_t* cpu, cpu_dev_t *dev, lb_func_t lb, lh_func_t lh, lw_func_t lw, ld_func_t ld) {
    dev->lb = lb;
    dev->lh = lh;
    dev->lw = lw;
    dev->ld = ld;
    return 1;
}

s32 cpuSetDevicePut(cpu_class_t *cpu, cpu_dev_t *dev, sb_func_t sb, sh_func_t sh, sw_func_t sw, sd_func_t sd) {
    dev->sb = sb;
    dev->sh = sh;
    dev->sw = sw;
    dev->sd = sd;
    return 1;
}

s32 cpuSetCodeHack(cpu_class_t *cpu, u32 addr, u32 repl, u32 end) { 
    s32 i;
    for(i = 0; i < cpu->hack_cnt; i++) {
        if(addr == cpu->hacks[i].addr) {
            return 0;
        }
    }

    cpu->hacks[i].addr = addr;
    cpu->hacks[i].repl = repl;
    cpu->hacks[i].end = end;
    cpu->hack_cnt++;
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuReset.s")

s32 cpuGetXPC(cpu_class_t *cpu, u64 *arg1, u64 *arg2, u64 *arg3) {
    if(!xlObjectTest(cpu, &gClassCPU)) {
        return 0;
    }

    if(arg1 != NULL) {
        *arg1 = cpu->n64_pc;
    }

    if(arg2 != NULL) {
        *arg2 = cpu->lo.dw;
    }

    if(arg3 != NULL) {
        *arg3 = cpu->hi.dw;
    }

    return 1;
}

s32 cpuSetXPC(cpu_class_t *cpu, void *arg1, u32 arg2, u32 arg3, u64 arg4, u64 arg5) {
    if(!xlObjectTest(cpu, &gClassCPU)) {
        return 0;
    }

    cpu->n64_pc = arg3;
    cpu->status |= 4;
    cpu->lo.dw = arg4;
    cpu->hi.dw = arg5;
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuEvent.s")

s32 func_8003D344(cpu_class_t *cpu, u32 *arg1, u32 arg2) {
    if(arg2 >= 0x80000000 && arg2 < 0xC0000000) {
        *arg1 = arg2 & 0x7FFFFF;
    } else {
        if(cpu->devices[cpu->mem_hi_map[arg2 >> 0x10]]->unk_0x00 & 0x100) {
            *arg1 = (arg2 + cpu->devices[cpu->mem_hi_map[arg2 >> 0x10]]->unk_0x08) & 0x7FFFFF;
        } else {
            return 0;
        }
    }
    
    return 1;
}

s32 cpuGetAddressBuffer(cpu_class_t *cpu, void **buffer, u32 addr) {
    cpu_dev_t *dev = cpu->devices[cpu->mem_hi_map[addr >> 0x10]];
    if(dev->dev == gSystem->ram) {
        if(!ramGetBuffer(dev->dev, buffer, addr + dev->unk_0x08, NULL)) {
            return 0;
        }
    } else if (dev->dev == gSystem->rom) {
        if(!func_80043E0C(dev->dev, buffer, addr + dev->unk_0x08, NULL)) {
            return 0;
        }
    } else if(dev->dev == gSystem->rsp) {
        if(!func_8007D6B8(dev->dev, buffer, addr + dev->unk_0x08, NULL)) {
            return 0;
        }
    } else {
        return 0;
    }

    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/func_8003D47C.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/func_8003D5FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/func_8003D67C.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuHeapTake.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuHeapFree.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuTreeTake.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/cpuFindFunction.s")

#pragma GLOBAL_ASM("asm/non_matchings/virtual_console/cpu/func_8003E604.s")

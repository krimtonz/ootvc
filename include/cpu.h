#ifndef _CPU_H
#define _CPU_H

#include "tree.h"
#include "class.h"

typedef s32 (*lb_func_t)(void* obj, u32 addr, s8* dst);
typedef s32 (*lh_func_t)(void* obj, u32 addr, s16* dst);
typedef s32 (*lw_func_t)(void* obj, u32 addr, s32* dst);
typedef s32 (*ld_func_t)(void* obj, u32 addr, s64* dst);
typedef s32 (*sb_func_t)(void* obj, u32 addr, s8* src);
typedef s32 (*sh_func_t)(void* obj, u32 addr, s16* src);
typedef s32 (*sw_func_t)(void* obj, u32 addr, s32* src);
typedef s32 (*sd_func_t)(void* obj, u32 addr, s64* src);

typedef struct {
    /* 0x0000 */ u32 unk_0x00;
    /* 0x0004 */ void *dev;
    /* 0x0008 */ u32 unk_0x08;
    /* 0x000C */ lb_func_t lb;
    /* 0x0010 */ lh_func_t lh;
    /* 0x0014 */ lw_func_t lw;
    /* 0x0018 */ ld_func_t ld;
    /* 0x001C */ sb_func_t sb;
    /* 0x0020 */ sh_func_t sh;
    /* 0x0024 */ sw_func_t sw;
    /* 0x0028 */ sd_func_t sd;
    /* 0x002C */ void *get_block;
    /* 0x0030 */ char unk_0x30[0x10];
} cpu_dev_t; // size = 0x40

typedef struct {
    /* 0x00000 */ s32 status;
    /* 0x00004 */ char unk_0x04[0x4];
    /* 0x00008 */ union {
        u32 w[2];
        u64 dw;
    } lo;
    /* 0x00010 */ union {
        u32 w[2];
        u64 dw;
    } hi;
    /* 0x00018 */ char unk_0x18[8];
    /* 0x00020 */ u32 n64_pc;
    /* 0x00024 */ s32 unk_0x24;
    /* 0x00028 */ char unk_0x28[0x8];
    /* 0x00030 */ u32 n64_ra;
    /* 0x00034 */ s32 unk_0x34; // timer?
    /* 0x00038 */ u32 tick;
    /* 0x0003C */ char unk_0x3C[0xC];
    /* 0x00048 */ union {
        u32 w[64];
        u64 dw[32];
    } gpr;
    /* 0x00148 */ union {
        float f[64];
        double d[32];
    } fpr;
    /* 0x00248 */ char unk_0x248[0x918];
    /* 0x00B60 */ cpu_dev_t* devices[0x100];
    /* 0x00F60 */ u8 mem_hi_map[0x10000];
    /* 0x10F60 */ char unk_0x10F60[0x534];
    /* 0x11494 */ recomp_tree_t* recomp_tree;
    /* 0x11498 */ char unk_0x11498[0xC00];
    /* 0x12098 */ s32 hack_cnt;
    /* 0x1209C */ struct {
        u32 addr;
        u32 repl;
        u32 end;
    } hacks[1]; // unknown length
    /* 0x1209C */ char unk_0x120A8[0x230];
} cpu_class_t; // size = 0x122D8

struct cpu_blk_req_t;

typedef s32 blockReqHandler(struct cpu_blk_req_t*, s32);

typedef struct cpu_blk_req_t {
    struct cpu_blk_req_t*  done;
    s32             len;
    blockReqHandler* handler;
    s32             dev_addr;
    u32             dst_phys_ram;
} cpu_blk_req_t;

s32 cpuSetGetBlock(cpu_class_t* cpu, cpu_dev_t* dev, void* arg2);
s32 cpuSetDevicePut(cpu_class_t* cpu, cpu_dev_t *dev, sb_func_t sb, sh_func_t sh, sw_func_t sw, sd_func_t sd);
s32 cpuSetDeviceGet(cpu_class_t* cpu, cpu_dev_t *dev, lb_func_t lb, lh_func_t lh, lw_func_t lw, ld_func_t ld);

extern class_t gClassCPU;

#endif

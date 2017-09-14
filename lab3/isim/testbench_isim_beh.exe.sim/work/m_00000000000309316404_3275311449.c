/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Student/Downloads/singleCycleInterface.v";



static void Always_274_0(char *t0)
{
    char t6[8];
    char t8[8];
    char t33[8];
    char t63[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;

LAB0:    t1 = (t0 + 7008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(274, ng0);
    t2 = (t0 + 7328);
    *((int *)t2) = 1;
    t3 = (t0 + 7040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(275, ng0);

LAB5:    xsi_set_current_line(276, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 2008U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 3);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 3);
    t15 = (t14 & 1);
    *((unsigned int *)t4) = t15;
    memset(t6, 0, 8);
    t16 = (t8 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t16) == 0)
        goto LAB6;

LAB8:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;

LAB9:    t23 = (t6 + 4);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t8);
    t26 = (~(t25));
    *((unsigned int *)t6) = t26;
    *((unsigned int *)t23) = 0;
    if (*((unsigned int *)t24) != 0)
        goto LAB11;

LAB10:    t31 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t31 & 1U);
    t32 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t32 & 1U);
    t34 = *((unsigned int *)t5);
    t35 = *((unsigned int *)t6);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = (t5 + 4);
    t38 = (t6 + 4);
    t39 = (t33 + 4);
    t40 = *((unsigned int *)t37);
    t41 = *((unsigned int *)t38);
    t42 = (t40 | t41);
    *((unsigned int *)t39) = t42;
    t43 = *((unsigned int *)t39);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB12;

LAB13:
LAB14:    t61 = (t0 + 1368U);
    t62 = *((char **)t61);
    t64 = *((unsigned int *)t33);
    t65 = *((unsigned int *)t62);
    t66 = (t64 & t65);
    *((unsigned int *)t63) = t66;
    t61 = (t33 + 4);
    t67 = (t62 + 4);
    t68 = (t63 + 4);
    t69 = *((unsigned int *)t61);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB15;

LAB16:
LAB17:    t94 = (t0 + 5928);
    xsi_vlogvar_assign_value(t94, t63, 0, 0, 1);
    xsi_set_current_line(277, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t4);
    t12 = (t10 & t11);
    *((unsigned int *)t6) = t12;
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t13 = *((unsigned int *)t2);
    t14 = *((unsigned int *)t5);
    t15 = (t13 | t14);
    *((unsigned int *)t7) = t15;
    t17 = *((unsigned int *)t7);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB18;

LAB19:
LAB20:    t22 = (t0 + 6088);
    xsi_vlogvar_assign_value(t22, t6, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB11:    t27 = *((unsigned int *)t6);
    t28 = *((unsigned int *)t24);
    *((unsigned int *)t6) = (t27 | t28);
    t29 = *((unsigned int *)t23);
    t30 = *((unsigned int *)t24);
    *((unsigned int *)t23) = (t29 | t30);
    goto LAB10;

LAB12:    t45 = *((unsigned int *)t33);
    t46 = *((unsigned int *)t39);
    *((unsigned int *)t33) = (t45 | t46);
    t47 = (t5 + 4);
    t48 = (t6 + 4);
    t49 = *((unsigned int *)t47);
    t50 = (~(t49));
    t51 = *((unsigned int *)t5);
    t52 = (t51 & t50);
    t53 = *((unsigned int *)t48);
    t54 = (~(t53));
    t55 = *((unsigned int *)t6);
    t56 = (t55 & t54);
    t57 = (~(t52));
    t58 = (~(t56));
    t59 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t59 & t57);
    t60 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t60 & t58);
    goto LAB14;

LAB15:    t74 = *((unsigned int *)t63);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t63) = (t74 | t75);
    t76 = (t33 + 4);
    t77 = (t62 + 4);
    t78 = *((unsigned int *)t33);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t62);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t92 & t88);
    t93 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t93 & t89);
    goto LAB17;

LAB18:    t19 = *((unsigned int *)t6);
    t20 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t19 | t20);
    t9 = (t3 + 4);
    t16 = (t4 + 4);
    t21 = *((unsigned int *)t3);
    t25 = (~(t21));
    t26 = *((unsigned int *)t9);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (~(t28));
    t30 = *((unsigned int *)t16);
    t31 = (~(t30));
    t52 = (t25 & t27);
    t56 = (t29 & t31);
    t32 = (~(t52));
    t34 = (~(t56));
    t35 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t35 & t32);
    t36 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t36 & t34);
    t40 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t40 & t32);
    t41 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t41 & t34);
    goto LAB20;

}


extern void work_m_00000000000309316404_3275311449_init()
{
	static char *pe[] = {(void *)Always_274_0};
	xsi_register_didat("work_m_00000000000309316404_3275311449", "isim/testbench_isim_beh.exe.sim/work/m_00000000000309316404_3275311449.didat");
	xsi_register_executes(pe);
}

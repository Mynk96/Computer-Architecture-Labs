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
static const char *ng0 = "C:/Users/Student/Downloads/decodeExecuteInterfaces.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {11, 0};
static int ng3[] = {0, 0};
static int ng4[] = {31, 0};
static int ng5[] = {12, 0};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {1048575U, 0U};



static void Always_104_0(char *t0)
{
    char t6[8];
    char t18[8];
    char t19[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    char *t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    int t41;
    int t42;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    t3 = (t0 + 2400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(105, ng0);

LAB5:    xsi_set_current_line(106, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 11);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 11);
    t13 = (t12 & 1);
    *((unsigned int *)t4) = t13;

LAB6:    t14 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t6, 1, t14, 1);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng6)));
    t15 = xsi_vlog_unsigned_case_compare(t6, 1, t2, 1);
    if (t15 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(108, ng0);

LAB12:    xsi_set_current_line(109, ng0);
    t16 = (t0 + 1048U);
    t17 = *((char **)t16);
    t16 = (t0 + 1448);
    t21 = (t0 + 1448);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng2)));
    t25 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t18, t19, t20, ((int*)(t23)), 2, t24, 32, 1, t25, 32, 1);
    t26 = (t18 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t19 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    t33 = (t20 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (!(t34));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    t4 = (t0 + 1448);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t14 = ((char*)((ng4)));
    t16 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t18, t19, t20, ((int*)(t7)), 2, t14, 32, 1, t16, 32, 1);
    t17 = (t18 + 4);
    t8 = *((unsigned int *)t17);
    t15 = (!(t8));
    t21 = (t19 + 4);
    t9 = *((unsigned int *)t21);
    t28 = (!(t9));
    t31 = (t15 && t28);
    t22 = (t20 + 4);
    t10 = *((unsigned int *)t22);
    t32 = (!(t10));
    t35 = (t31 && t32);
    if (t35 == 1)
        goto LAB15;

LAB16:    goto LAB11;

LAB9:    xsi_set_current_line(113, ng0);

LAB17:    xsi_set_current_line(114, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1448);
    t5 = (t0 + 1448);
    t7 = (t5 + 72U);
    t14 = *((char **)t7);
    t16 = ((char*)((ng2)));
    t17 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t18, t19, t20, ((int*)(t14)), 2, t16, 32, 1, t17, 32, 1);
    t21 = (t18 + 4);
    t8 = *((unsigned int *)t21);
    t28 = (!(t8));
    t22 = (t19 + 4);
    t9 = *((unsigned int *)t22);
    t31 = (!(t9));
    t32 = (t28 && t31);
    t23 = (t20 + 4);
    t10 = *((unsigned int *)t23);
    t35 = (!(t10));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1448);
    t4 = (t0 + 1448);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t14 = ((char*)((ng4)));
    t16 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t18, t19, t20, ((int*)(t7)), 2, t14, 32, 1, t16, 32, 1);
    t17 = (t18 + 4);
    t8 = *((unsigned int *)t17);
    t15 = (!(t8));
    t21 = (t19 + 4);
    t9 = *((unsigned int *)t21);
    t28 = (!(t9));
    t31 = (t15 && t28);
    t22 = (t20 + 4);
    t10 = *((unsigned int *)t22);
    t32 = (!(t10));
    t35 = (t31 && t32);
    if (t35 == 1)
        goto LAB20;

LAB21:    goto LAB11;

LAB13:    t37 = *((unsigned int *)t20);
    t38 = (t37 + 0);
    t39 = *((unsigned int *)t18);
    t40 = *((unsigned int *)t19);
    t41 = (t39 - t40);
    t42 = (t41 + 1);
    xsi_vlogvar_assign_value(t16, t17, t38, *((unsigned int *)t19), t42);
    goto LAB14;

LAB15:    t11 = *((unsigned int *)t20);
    t36 = (t11 + 0);
    t12 = *((unsigned int *)t18);
    t13 = *((unsigned int *)t19);
    t38 = (t12 - t13);
    t41 = (t38 + 1);
    xsi_vlogvar_assign_value(t3, t2, t36, *((unsigned int *)t19), t41);
    goto LAB16;

LAB18:    t11 = *((unsigned int *)t20);
    t38 = (t11 + 0);
    t12 = *((unsigned int *)t18);
    t13 = *((unsigned int *)t19);
    t41 = (t12 - t13);
    t42 = (t41 + 1);
    xsi_vlogvar_assign_value(t3, t4, t38, *((unsigned int *)t19), t42);
    goto LAB19;

LAB20:    t11 = *((unsigned int *)t20);
    t36 = (t11 + 0);
    t12 = *((unsigned int *)t18);
    t13 = *((unsigned int *)t19);
    t38 = (t12 - t13);
    t41 = (t38 + 1);
    xsi_vlogvar_assign_value(t3, t2, t36, *((unsigned int *)t19), t41);
    goto LAB21;

}


extern void work_m_00000000003567390134_1058150664_init()
{
	static char *pe[] = {(void *)Always_104_0};
	xsi_register_didat("work_m_00000000003567390134_1058150664", "isim/testbench_isim_beh.exe.sim/work/m_00000000003567390134_1058150664.didat");
	xsi_register_executes(pe);
}

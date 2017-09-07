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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001497284362_3189106917_init();
    work_m_00000000003567390134_1058150664_init();
    work_m_00000000001305750757_1198563388_init();
    work_m_00000000001888639760_4263907702_init();
    work_m_00000000001888639760_1100950613_init();
    work_m_00000000001713621113_3906735150_init();
    work_m_00000000003043361200_0175330474_init();
    work_m_00000000000854617254_0886308060_init();
    work_m_00000000000999239454_0006932077_init();
    work_m_00000000003777285641_3833326625_init();
    work_m_00000000001527061026_1949178628_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001527061026_1949178628");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}

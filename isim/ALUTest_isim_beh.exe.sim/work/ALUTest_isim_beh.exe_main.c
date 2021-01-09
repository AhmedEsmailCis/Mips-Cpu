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

char *STD_STANDARD;
char *IEEE_P_3499444699;
char *WORK_P_1087785709;
char *IEEE_P_3620187407;
char *WORK_P_0887401000;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_0887401000_init();
    work_p_1087785709_init();
    work_a_0734482308_3212880686_init();
    work_a_3006959317_3212880686_init();
    work_a_2973221874_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_3279062471_3212880686_init();
    work_a_2768955017_3212880686_init();
    work_a_2951549607_3212880686_init();
    work_a_1907341088_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1599699025_2372691052_init();


    xsi_register_tops("work_a_1599699025_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    WORK_P_1087785709 = xsi_get_engine_memory("work_p_1087785709");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_0887401000 = xsi_get_engine_memory("work_p_0887401000");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}

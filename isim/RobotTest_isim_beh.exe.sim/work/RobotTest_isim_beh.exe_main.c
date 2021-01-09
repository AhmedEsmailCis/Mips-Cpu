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

char *WORK_P_0887401000;
char *IEEE_P_0774719531;
char *WORK_P_1782583502;
char *WORK_P_1030204400;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3564397177;
char *WORK_P_1087785709;
char *IEEE_P_3499444699;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_1030204400_init();
    work_p_0887401000_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_1782583502_init();
    work_a_0143937076_2204037357_init();
    work_a_3112044328_3212880686_init();
    work_a_0763730103_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_3006959317_3212880686_init();
    work_a_1350853198_3212880686_init();
    work_a_1506983852_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_p_1087785709_init();
    work_a_0734482308_3212880686_init();
    work_a_2973221874_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_3279062471_3212880686_init();
    work_a_2768955017_3212880686_init();
    work_a_2951549607_3212880686_init();
    work_a_1907341088_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1215300100_3212880686_init();
    work_a_0091831607_3212880686_init();
    work_a_2000722588_3212880686_init();
    work_a_1572371690_3212880686_init();
    work_a_3853510154_3212880686_init();
    work_a_3044219816_3212880686_init();
    work_a_0431830435_3212880686_init();
    work_a_1809836099_2372691052_init();


    xsi_register_tops("work_a_1809836099_2372691052");

    WORK_P_0887401000 = xsi_get_engine_memory("work_p_0887401000");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    WORK_P_1782583502 = xsi_get_engine_memory("work_p_1782583502");
    WORK_P_1030204400 = xsi_get_engine_memory("work_p_1030204400");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    WORK_P_1087785709 = xsi_get_engine_memory("work_p_1087785709");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}

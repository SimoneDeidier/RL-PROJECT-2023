/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_822(char*, char *);
IKI_DLLESPEC extern void execute_823(char*, char *);
IKI_DLLESPEC extern void execute_824(char*, char *);
IKI_DLLESPEC extern void execute_825(char*, char *);
IKI_DLLESPEC extern void execute_29(char*, char *);
IKI_DLLESPEC extern void execute_36(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void execute_41(char*, char *);
IKI_DLLESPEC extern void execute_42(char*, char *);
IKI_DLLESPEC extern void execute_43(char*, char *);
IKI_DLLESPEC extern void execute_54(char*, char *);
IKI_DLLESPEC extern void execute_57(char*, char *);
IKI_DLLESPEC extern void execute_124(char*, char *);
IKI_DLLESPEC extern void execute_126(char*, char *);
IKI_DLLESPEC extern void execute_127(char*, char *);
IKI_DLLESPEC extern void execute_128(char*, char *);
IKI_DLLESPEC extern void execute_263(char*, char *);
IKI_DLLESPEC extern void execute_265(char*, char *);
IKI_DLLESPEC extern void execute_266(char*, char *);
IKI_DLLESPEC extern void execute_301(char*, char *);
IKI_DLLESPEC extern void execute_302(char*, char *);
IKI_DLLESPEC extern void execute_305(char*, char *);
IKI_DLLESPEC extern void execute_359(char*, char *);
IKI_DLLESPEC extern void execute_365(char*, char *);
IKI_DLLESPEC extern void execute_593(char*, char *);
IKI_DLLESPEC extern void execute_642(char*, char *);
IKI_DLLESPEC extern void execute_747(char*, char *);
IKI_DLLESPEC extern void execute_782(char*, char *);
IKI_DLLESPEC extern void execute_787(char*, char *);
IKI_DLLESPEC extern void execute_797(char*, char *);
IKI_DLLESPEC extern void execute_799(char*, char *);
IKI_DLLESPEC extern void execute_801(char*, char *);
IKI_DLLESPEC extern void execute_802(char*, char *);
IKI_DLLESPEC extern void execute_803(char*, char *);
IKI_DLLESPEC extern void execute_817(char*, char *);
IKI_DLLESPEC extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_214(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_221(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_235(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_242(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_256(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_263(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_284(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_291(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_298(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_305(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_312(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_332(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_339(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_353(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_360(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_374(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_381(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_388(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_402(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_423(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_430(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_437(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_451(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_458(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_472(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_479(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_486(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_493(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_500(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_507(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_514(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_521(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_528(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_535(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_542(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_549(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_556(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_563(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_570(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_577(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_584(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_591(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_598(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_605(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_612(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_619(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_626(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_633(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_640(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_647(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_654(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_661(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_668(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_675(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_682(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_689(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_710(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_724(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_731(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_738(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_745(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_752(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_759(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_766(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_773(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_780(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_787(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_794(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_801(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_808(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_815(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_822(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_829(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_836(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_843(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_850(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_857(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_864(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_871(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_878(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_885(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_892(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_899(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_906(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_913(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_920(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_927(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_934(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_941(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_948(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_955(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_962(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_969(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_976(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_983(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_990(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_997(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1004(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1011(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1018(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1025(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[159] = {(funcp)execute_822, (funcp)execute_823, (funcp)execute_824, (funcp)execute_825, (funcp)execute_29, (funcp)execute_36, (funcp)execute_39, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_54, (funcp)execute_57, (funcp)execute_124, (funcp)execute_126, (funcp)execute_127, (funcp)execute_128, (funcp)execute_263, (funcp)execute_265, (funcp)execute_266, (funcp)execute_301, (funcp)execute_302, (funcp)execute_305, (funcp)execute_359, (funcp)execute_365, (funcp)execute_593, (funcp)execute_642, (funcp)execute_747, (funcp)execute_782, (funcp)execute_787, (funcp)execute_797, (funcp)execute_799, (funcp)execute_801, (funcp)execute_802, (funcp)execute_803, (funcp)execute_817, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_89, (funcp)transaction_186, (funcp)transaction_193, (funcp)transaction_200, (funcp)transaction_207, (funcp)transaction_214, (funcp)transaction_221, (funcp)transaction_228, (funcp)transaction_235, (funcp)transaction_242, (funcp)transaction_249, (funcp)transaction_256, (funcp)transaction_263, (funcp)transaction_270, (funcp)transaction_277, (funcp)transaction_284, (funcp)transaction_291, (funcp)transaction_298, (funcp)transaction_305, (funcp)transaction_312, (funcp)transaction_318, (funcp)transaction_325, (funcp)transaction_332, (funcp)transaction_339, (funcp)transaction_346, (funcp)transaction_353, (funcp)transaction_360, (funcp)transaction_367, (funcp)transaction_374, (funcp)transaction_381, (funcp)transaction_388, (funcp)transaction_395, (funcp)transaction_402, (funcp)transaction_409, (funcp)transaction_416, (funcp)transaction_423, (funcp)transaction_430, (funcp)transaction_437, (funcp)transaction_444, (funcp)transaction_451, (funcp)transaction_458, (funcp)transaction_465, (funcp)transaction_472, (funcp)transaction_479, (funcp)transaction_486, (funcp)transaction_493, (funcp)transaction_500, (funcp)transaction_507, (funcp)transaction_514, (funcp)transaction_521, (funcp)transaction_528, (funcp)transaction_535, (funcp)transaction_542, (funcp)transaction_549, (funcp)transaction_556, (funcp)transaction_563, (funcp)transaction_570, (funcp)transaction_577, (funcp)transaction_584, (funcp)transaction_591, (funcp)transaction_598, (funcp)transaction_605, (funcp)transaction_612, (funcp)transaction_619, (funcp)transaction_626, (funcp)transaction_633, (funcp)transaction_640, (funcp)transaction_647, (funcp)transaction_654, (funcp)transaction_661, (funcp)transaction_668, (funcp)transaction_675, (funcp)transaction_682, (funcp)transaction_689, (funcp)transaction_696, (funcp)transaction_703, (funcp)transaction_710, (funcp)transaction_717, (funcp)transaction_724, (funcp)transaction_731, (funcp)transaction_738, (funcp)transaction_745, (funcp)transaction_752, (funcp)transaction_759, (funcp)transaction_766, (funcp)transaction_773, (funcp)transaction_780, (funcp)transaction_787, (funcp)transaction_794, (funcp)transaction_801, (funcp)transaction_808, (funcp)transaction_815, (funcp)transaction_822, (funcp)transaction_829, (funcp)transaction_836, (funcp)transaction_843, (funcp)transaction_850, (funcp)transaction_857, (funcp)transaction_864, (funcp)transaction_871, (funcp)transaction_878, (funcp)transaction_885, (funcp)transaction_892, (funcp)transaction_899, (funcp)transaction_906, (funcp)transaction_913, (funcp)transaction_920, (funcp)transaction_927, (funcp)transaction_934, (funcp)transaction_941, (funcp)transaction_948, (funcp)transaction_955, (funcp)transaction_962, (funcp)transaction_969, (funcp)transaction_976, (funcp)transaction_983, (funcp)transaction_990, (funcp)transaction_997, (funcp)transaction_1004, (funcp)transaction_1011, (funcp)transaction_1018, (funcp)transaction_1025};
const int NumRelocateId= 159;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb7_reset_read_mem_func_synth/xsim.reloc",  (void **)funcTab, 159);
	iki_vhdl_file_variable_register(dp + 1272408);
	iki_vhdl_file_variable_register(dp + 1272464);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb7_reset_read_mem_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb7_reset_read_mem_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/tb7_reset_read_mem_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb7_reset_read_mem_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb7_reset_read_mem_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

# Multithreaded + multi-processing makefile for Linux mylaptop 2.2.14-5.0 #4 Fri Aug 25 02:00:37 EDT 2000 i686 unknown
# This makefile was generated automatically on
#    Wed May 23 09:55:22 EDT 2001
# by the command:
#    ../../../tools/genmake -mods=../code
# executed by:
#    cnh@mylaptop:/homes/cnh/src/c39/verification/exp0/input
# 
# BUILDDIR     : Directory where object files are written
# SOURCEDIRS   : Directories containing the source (.F) files
# INCLUDEDIRS  : Directories containing the header-source (.h) files
# EXEDIR       : Directory where executable that is generated is written
# EXECUTABLE   : Full path of executable binary
#
# CPP          : C-preprocessor command
# INCLUDES     : Directories searched for header files
# DEFINES      : Macro definitions for CPP
# KPP          : Special preprocessor command (specific to platform)
# KFLAGS       : Flags for KPP
# FC           : Fortran compiler command
# FFLAGS       : Configuration/debugging options for FC
# FOPTIM       : Optimization options for FC
# LINK         : Command for link editor program
# LIBS         : Library flags /or/ additional optimization/debugging flags

ROOTDIR     = ../../..
BUILDDIR    = .  
SOURCEDIRS  = ../code ../../../pkg/debug ../../../pkg/gmredi ../../../pkg/kpp ../../../pkg/mdsio ../../../pkg/obcs ../../../pkg/shap_filt ../../../pkg/timeave ../../../pkg/zonal_filt ../../../eesupp/src ../../../model/src
INCLUDEDIRS = . ../code ../../../pkg/debug ../../../pkg/gmredi ../../../pkg/kpp ../../../pkg/mdsio ../../../pkg/obcs ../../../pkg/shap_filt ../../../pkg/timeave ../../../pkg/zonal_filt ../../../eesupp/inc ../../../model/inc
EXEDIR      = .
EXECUTABLE  = $(EXEDIR)/mitgcmuv
TOOLSDIR    = ../../../tools

# Unix ln (link)
LN = /bin/ln -s
# C preprocessor
CPP = cat $< | $(TOOLSDIR)/set64bitConst.sh | /lib/cpp  -traditional -P
# Special preprocessor (KAP on DECs, FPP on Crays)
KPP = 
# Fortran compiler
FC = g77
# Link editor
LINK = g77

# Defines for CPP
DEFINES = -D_BYTESWAPIO -DWORDLENGTH=4
# Includes for CPP
INCLUDES = -I. -I../code -I../../../pkg/debug -I../../../pkg/gmredi -I../../../pkg/kpp -I../../../pkg/mdsio -I../../../pkg/obcs -I../../../pkg/shap_filt -I../../../pkg/timeave -I../../../pkg/zonal_filt -I../../../eesupp/inc -I../../../model/inc
# Flags for KPP
KFLAGS1 = 
KFLAGS2 = 
# Optim./debug for FC
FFLAGS = -Wimplicit -Wunused -Wuninitialized
FOPTIM = -O3 -malign-double -funroll-loops 
# Files that should not be optimized
NOOPTFILES = 
NOOPTFLAGS = 
# Flags and libraries needed for linking
LIBS =  $(XLIBS)

SRCFILES =  \
            chksum_tiled.F \
            gmredi_calc_diff.F \
            gmredi_calc_tensor.F \
            gmredi_check.F \
            gmredi_diags.F \
            gmredi_init.F \
            gmredi_readparms.F \
            gmredi_rtransport.F \
            gmredi_slope_limit.F \
            gmredi_xtransport.F \
            gmredi_ytransport.F \
            kpp_calc.F \
            kpp_calc_diff.F \
            kpp_check.F \
            kpp_do_diags.F \
            kpp_init.F \
            kpp_open_diags.F \
            kpp_readparms.F \
            kpp_routines.F \
            kpp_transport_s.F \
            kpp_transport_t.F \
            mdsio.F \
            mdsio_byteswapr4.F \
            mdsio_byteswapr8.F \
            mdsio_findunit.F \
            mdsio_gl.F \
            mdsio_read_rl_vec.F \
            mdsio_read_rs_vec.F \
            mdsio_readfield.F \
            mdsio_readtile.F \
            mdsio_readvector.F \
            mdsio_reclen.F \
            mdsio_seg4torl.F \
            mdsio_seg4tors.F \
            mdsio_seg8torl.F \
            mdsio_seg8tors.F \
            mdsio_slice.F \
            mdsio_write_rl_vec.F \
            mdsio_write_rs_vec.F \
            mdsio_writefield.F \
            mdsio_writemeta.F \
            mdsio_writevector.F \
            obcs_apply_ts.F \
            obcs_apply_uv.F \
            obcs_apply_w.F \
            obcs_calc.F \
            obcs_check.F \
            obcs_checkpoint.F \
            obcs_init_fixed.F \
            obcs_init_variables.F \
            obcs_readparms.F \
            orlanski_checkpoint.F \
            orlanski_east.F \
            orlanski_init.F \
            orlanski_north.F \
            orlanski_south.F \
            orlanski_west.F \
            shap_filt_apply.F \
            shap_filt_tracer.F \
            shap_filt_tracerold.F \
            shap_filt_u.F \
            shap_filt_uv.F \
            shap_filt_v.F \
            timeave_cumul_1k.F \
            timeave_cumul_2v.F \
            timeave_cumulate.F \
            timeave_norma_1k.F \
            timeave_normaliz.F \
            timeave_reset.F \
            timeave_reset_1k.F \
            timeave_statv_write.F \
            timeave_statvars.F \
            fftpack.F \
            zonal_filt_apply.F \
            zonal_filt_init.F \
            zonal_filt_nofill.F \
            zonal_filt_postsmooth.F \
            zonal_filt_presmooth.F \
            zonal_filter.F \
            bar2.F \
            barrier.F \
            check_threads.F \
            comm_stats.F \
            dfile.F \
            different_multiple.F \
            eeboot.F \
            eeboot_minimal.F \
            eedata_example.F \
            eedie.F \
            eeintro_msg.F \
            eeset_parms.F \
            eewrite_eeenv.F \
            exch.F \
            exch_control.F \
            exch_cycle_ebl.F \
            exch_init.F \
            exch_jam.F \
            exch_recv_get_x.F \
            exch_recv_get_y.F \
            exch_send_put_x.F \
            exch_send_put_y.F \
            fool_the_compiler.F \
            global_max.F \
            global_sum.F \
            gsum.F \
            gsum_jam.F \
            ini_communication_patterns.F \
            ini_jam.F \
            ini_procs.F \
            ini_threading_environment.F \
            main.F \
            memsync.F \
            nml_filter.F \
            print.F \
            read_field.F \
            timers.F \
            utils.F \
            write_field.F \
            calc_buoyancy.F \
            calc_common_factors.F \
            calc_diffusivity.F \
            calc_div_ghat.F \
            calc_grad_phi_surf.F \
            calc_gs.F \
            calc_gt.F \
            calc_gw.F \
            calc_ivdc.F \
            calc_mom_rhs.F \
            calc_phi_hyd.F \
            cg2d.F \
            cg3d.F \
            checkpoint.F \
            config_summary.F \
            convect.F \
            convective_adjustment.F \
            convective_adjustment_ini.F \
            correction_step.F \
            cycle_tracer.F \
            do_fields_blocking_exchanges.F \
            do_gterm_blocking_exchanges.F \
            do_the_model_io.F \
            dynamics.F \
            external_fields_load.F \
            external_forcing.F \
            external_forcing_surf.F \
            find_alpha.F \
            find_rho.F \
            freeze.F \
            get_offline_fields.F \
            grad_sigma.F \
            impldiff.F \
            ini_cartesian_grid.F \
            ini_cg2d.F \
            ini_cg3d.F \
            ini_cori.F \
            ini_depths.F \
            ini_fields.F \
            ini_forcing.F \
            ini_grid.F \
            ini_gw.F \
            ini_masks_etc.F \
            ini_parms.F \
            ini_psurf.F \
            ini_salt.F \
            ini_spherical_polar_grid.F \
            ini_theta.F \
            ini_uvel.F \
            ini_vertical_grid.F \
            ini_vvel.F \
            ini_wvel.F \
            initialise_fixed.F \
            initialise_varia.F \
            integrate_for_w.F \
            modeldata_example.F \
            open_copy_data_file.F \
            packages_boot.F \
            packages_check.F \
            packages_check_error.F \
            packages_init_fixed.F \
            packages_init_variables.F \
            packages_readparms.F \
            plot_field.F \
            port_rand.F \
            read_write.F \
            read_write_fld.F \
            read_write_rec.F \
            set_defaults.F \
            solve_for_pressure.F \
            state_summary.F \
            swfrac.F \
            the_correction_step.F \
            the_main_loop.F \
            the_model_main.F \
            timestep.F \
            timestep_tracer.F \
            write_state.F
CSRCFILES =  \
            tim.c
F77FILES =  $(SRCFILES:.F=.f)
OBJFILES =  $(SRCFILES:.F=.o) $(CSRCFILES:.c=.o)

.SUFFIXES:
.SUFFIXES: .o .f .p .F .c

all: $(EXECUTABLE)
$(EXECUTABLE): $(OBJFILES)
	$(LINK) -o $@ $(FFLAGS) $(FOPTIM) $(OBJFILES) $(LIBS)
depend:
	@make links
	makedepend -o .f $(INCLUDES) $(SRCFILES)

links: $(SRCFILES)

small_f: $(F77FILES)

clean:
	-rm -rf *.o *.f *.p 
Clean:
	@make clean
	@make cleanlinks
	-rm -f Makefile.bak
CLEAN:
	@make Clean
	-find $(EXEDIR) -name "*.meta" -exec rm {} \;
	-find $(EXEDIR) -name "*.data" -exec rm {} \;
	-rm -f $(EXECUTABLE)

makefile:
	../../../tools/genmake -mods=../code
cleanlinks:
	-find . -type l -exec rm {} \;

# The normal chain of rules is (  .F - .f - .o  )
.F.f:
	$(CPP) $(DEFINES) $(INCLUDES) > $@
.f.o:
	$(FC) $(FFLAGS) $(FOPTIM) -c $<

# Special exceptions that use the ( .F - .p - .f - .o ) rule-chain
.F.p:
	$(CPP) $(DEFINES) $(INCLUDES) > $@
.p.f:
	$(KPP) $(KFLAGS1)$@ $(KFLAGS2) $<

# This section creates symbolic links

# These files are linked from ../../../pkg/debug
chksum_tiled.F:
	$(LN) ../../../pkg/debug/$@ $@
# These files are linked from ../../../pkg/gmredi
gmredi_calc_diff.F gmredi_calc_tensor.F gmredi_check.F gmredi_diags.F gmredi_init.F gmredi_readparms.F gmredi_rtransport.F gmredi_slope_limit.F gmredi_xtransport.F gmredi_ytransport.F:
	$(LN) ../../../pkg/gmredi/$@ $@
# These files are linked from ../../../pkg/kpp
kpp_calc.F kpp_calc_diff.F kpp_check.F kpp_do_diags.F kpp_init.F kpp_open_diags.F kpp_readparms.F kpp_routines.F kpp_transport_s.F kpp_transport_t.F:
	$(LN) ../../../pkg/kpp/$@ $@
# These files are linked from ../../../pkg/mdsio
mdsio.F mdsio_byteswapr4.F mdsio_byteswapr8.F mdsio_findunit.F mdsio_gl.F mdsio_read_rl_vec.F mdsio_read_rs_vec.F mdsio_readfield.F mdsio_readtile.F mdsio_readvector.F mdsio_reclen.F mdsio_seg4torl.F mdsio_seg4tors.F mdsio_seg8torl.F mdsio_seg8tors.F mdsio_slice.F mdsio_write_rl_vec.F mdsio_write_rs_vec.F mdsio_writefield.F mdsio_writemeta.F mdsio_writevector.F:
	$(LN) ../../../pkg/mdsio/$@ $@
# These files are linked from ../../../pkg/obcs
obcs_apply_ts.F obcs_apply_uv.F obcs_apply_w.F obcs_calc.F obcs_check.F obcs_checkpoint.F obcs_init_fixed.F obcs_init_variables.F obcs_readparms.F orlanski_checkpoint.F orlanski_east.F orlanski_init.F orlanski_north.F orlanski_south.F orlanski_west.F:
	$(LN) ../../../pkg/obcs/$@ $@
# These files are linked from ../../../pkg/shap_filt
shap_filt_apply.F shap_filt_tracer.F shap_filt_tracerold.F shap_filt_u.F shap_filt_uv.F shap_filt_v.F:
	$(LN) ../../../pkg/shap_filt/$@ $@
# These files are linked from ../../../pkg/timeave
timeave_cumul_1k.F timeave_cumul_2v.F timeave_cumulate.F timeave_norma_1k.F timeave_normaliz.F timeave_reset.F timeave_reset_1k.F timeave_statv_write.F timeave_statvars.F:
	$(LN) ../../../pkg/timeave/$@ $@
# These files are linked from ../../../pkg/zonal_filt
fftpack.F zonal_filt_apply.F zonal_filt_init.F zonal_filt_nofill.F zonal_filt_postsmooth.F zonal_filt_presmooth.F zonal_filter.F:
	$(LN) ../../../pkg/zonal_filt/$@ $@
# These files are linked from ../../../eesupp/src
bar2.F barrier.F check_threads.F comm_stats.F dfile.F different_multiple.F eeboot.F eeboot_minimal.F eedata_example.F eedie.F eeintro_msg.F eeset_parms.F eewrite_eeenv.F exch.F exch_control.F exch_cycle_ebl.F exch_init.F exch_jam.F exch_recv_get_x.F exch_recv_get_y.F exch_send_put_x.F exch_send_put_y.F fool_the_compiler.F global_max.F global_sum.F gsum.F gsum_jam.F ini_communication_patterns.F ini_jam.F ini_procs.F ini_threading_environment.F main.F memsync.F nml_filter.F print.F read_field.F tim.c timers.F utils.F write_field.F:
	$(LN) ../../../eesupp/src/$@ $@
# These files are linked from ../../../model/src
calc_buoyancy.F calc_common_factors.F calc_diffusivity.F calc_div_ghat.F calc_grad_phi_surf.F calc_gs.F calc_gt.F calc_gw.F calc_ivdc.F calc_mom_rhs.F calc_phi_hyd.F cg2d.F cg3d.F checkpoint.F config_summary.F convect.F convective_adjustment.F convective_adjustment_ini.F correction_step.F cycle_tracer.F do_fields_blocking_exchanges.F do_gterm_blocking_exchanges.F do_the_model_io.F dynamics.F external_fields_load.F external_forcing.F external_forcing_surf.F find_alpha.F find_rho.F freeze.F get_offline_fields.F grad_sigma.F impldiff.F ini_cartesian_grid.F ini_cg2d.F ini_cg3d.F ini_cori.F ini_depths.F ini_fields.F ini_forcing.F ini_grid.F ini_gw.F ini_masks_etc.F ini_parms.F ini_psurf.F ini_salt.F ini_spherical_polar_grid.F ini_theta.F ini_uvel.F ini_vertical_grid.F ini_vvel.F ini_wvel.F initialise_fixed.F initialise_varia.F integrate_for_w.F modeldata_example.F open_copy_data_file.F packages_boot.F packages_check.F packages_check_error.F packages_init_fixed.F packages_init_variables.F packages_readparms.F plot_field.F port_rand.F read_write.F read_write_fld.F read_write_rec.F set_defaults.F solve_for_pressure.F state_summary.F swfrac.F the_correction_step.F the_main_loop.F the_model_main.F timestep.F timestep_tracer.F write_state.F:
	$(LN) ../../../model/src/$@ $@

# DO NOT DELETE

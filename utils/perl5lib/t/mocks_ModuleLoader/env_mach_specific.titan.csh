#!/usr/bin/env csh -f
#===============================================================================
# Automatically generated module settings for titan
# DO NOT EDIT THIS FILE DIRECTLY!  Please edit env_mach_specific.xml
# in your CASEROOT. This file is overwritten every time modules are loaded!
#===============================================================================

source  /opt/modules/default/init/csh
set CESM_REPO = `./xmlquery CCSM_REPOTAG -value`
if($status == 0) then
  set COMPILER            = `./xmlquery  COMPILER          -value`
  set MPILIB              = `./xmlquery  MPILIB        -value`
  set DEBUG               = `./xmlquery  DEBUG         -value`
  set OS                  = `./xmlquery  OS        -value`
  set PROFILE_PAPI_ENABLE = `./xmlquery  PROFILE_PAPI_ENABLE -value`
endif
module rm PrgEnv-intel
module rm PrgEnv-pgi
module rm PrgEnv-cray
module rm PrgEnv-gnu
module rm PrgEnv-pathscale
module rm intel
module rm pgi
module rm cray
module rm pathscale
module rm parallel-netcdf
module rm netcdf
module rm cmake
module rm cray-mpich
module rm cray-mpich2
module rm cray-libsci
module rm xt-libsci
module rm cray-netcdf
module rm cray-netcdf-hdf5parallel
module rm cray-parallel-netcdf
if ( $COMPILER == "pgicuda" ) then
	module load PrgEnv-pgi
	module switch pgi pgi/14.2.0
	module load cray-mpich/7.0.4
	module load cray-libsci/13.0.1
	module load esmf/5.2.0rp2
	module switch atp atp/1.7.5
	module add cudatoolkit
endif
if ( $COMPILER == "pgi" ) then
	module load PrgEnv-pgi
	module switch pgi pgi/14.2.0
	module load cray-mpich/7.0.4
	module load cray-libsci/13.0.1
	module load esmf/5.2.0rp2
endif
if ( $COMPILER == "intel" ) then
	module load PrgEnv-pgi
	module switch intel intel/14.0.2.144
	module load cray-mpich/7.0.4
endif
if ( $MPILIB == "mpi-serial" ) then
	module load cray-netcdf/4.3.0
endif
if ( $MPILIB != "mpi-serial" ) then
	module load cray-netcdf-hdf5parallel/4.3.2
	module load cray-parallel-netcdf/1.5.0
endif
module load subversion
module load cmake/2.8.11.2
if ( $COMPILER == "pgicuda" ) then
	setenv CRAY_CPU_TARGET istanbul
	setenv CRAY_CUDA_PROXY 1
endif
if ( $COMPILER == "pgi" ) then
	setenv CRAY_CPU_TARGET istanbul
endif
setenv MPICH_ENV_DISPLAY 1
setenv MPICH_VERSION_DISPLAY 1
setenv MPICH_CPUMASK_DPSPLAY 1
setenv MPICH_RANK_REORDER_DISPLAY 1
setenv MPSTKZ 64M
setenv OMP_STACKSIZE 64M

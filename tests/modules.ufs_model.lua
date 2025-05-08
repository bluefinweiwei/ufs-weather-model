help([[
loads UFS Model prerequisites for NCAR Derecho/Intel
]])

prepend_path("MODULEPATH","/lustre/desc1/scratch/epicufsrt/contrib/modulefiles_extra")
prepend_path("MODULEPATH", "/glade/work/epicufsrt/contrib/spack-stack/derecho/spack-stack-1.6.0/envs/upp-addon-env/install/modulefiles/Core")

load(pathJoin("stack-intel", os.getenv("stack_intel_ver") or "2021.10.0"))
load(pathJoin("stack-cray-mpich", os.getenv("stack_cray_mpich_ver") or "8.1.25"))
load(pathJoin("cmake", os.getenv("cmake_ver") or "3.23.1"))

load("ufs_common")

setenv("CC", "cc")
setenv("CXX", "CC")
setenv("FC", "ftn")
setenv("CMAKE_Platform", "derecho.intel")

whatis("Description: UFS build environment")

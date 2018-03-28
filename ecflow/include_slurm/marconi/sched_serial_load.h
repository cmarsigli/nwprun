#SBATCH --mem=64G

. ~/smnd_profile
module load autoload
module load intel
module load hdf5
module load intelmpi
module load mkl
export LD_LIBRARY_PATH=$WORK/srcintel/install/lib:$LD_LIBRARY_PATH


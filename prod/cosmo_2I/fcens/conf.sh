MODEL_PRE_BIN=$WORK/srcintel/int2lm_170406_2.04a/tstint2lm
MODEL_BIN=$WORK/srcintel/cosmo_170123_5.04d3/lmparbin_all
FXTR_HOME=$WORK/srcintel/fieldExtra-12.6.0/
FXTR_BIN=$FXTR_HOME/src/fieldextra_intel_opt_omp
FXTR_WORKDIR=$WORKDIR/fxtr
FXTR_DATADIR=$FXTR_WORKDIR/data
PARENTMODEL=COSMO
MODEL_NUDG=.FALSE.
MODEL_LHN=.TRUE.
MODEL_NH_NUDG=4
MODEL_NH_LHN=4
MODEL_BACK=0
MODEL_STOP=51
MODEL_BCANA=N
#MODEL_SOIL_PARENT=Y
#MODEL_SNOW_PARENT=Y
MODEL_LAKE=Y
MODEL_SLOW_PAST_H=144
MODEL_FREQINI=24
MODEL_DELTABD=9
ENS_TOTAL_MEMB=20
ENS_DET_MEMB=
# setup for remote import
ARKI_IMPDIR=~arki-imp/arki-imp/cosmo_2I_fcens

PARENTMODEL_ARKI_DS=$ARKI_URL/cnmc_cosmo_eps
PARENTMODEL_FREQINI=3
PARENTMODEL_FREQANA=3
PARENTMODEL_FREQFC=3
PARENTMODEL_QRQS=.FALSE.
# input data
PARENTMODEL_DATADIR=$WORKDIR/input.$ENS_MEMB/data
MODEL_ARKI_PARAM="proddef:GRIB:nn=$ENS_MEMB;"
# preprocessing (interpolation)
MODEL_PRE_WORKDIR=$WORKDIR/int2lm.$ENS_MEMB
MODEL_PRE_DATADIR=$WORKDIR/int2lm.$ENS_MEMB/data
# model run
MODEL_WORKDIR=$WORKDIR/cosmo.$ENS_MEMB 
MODEL_DATADIR=$WORKDIR/cosmo.$ENS_MEMB/data
# setup for remote import
ARKI_IMPDIR=~arki-imp/arki-imp/cosmo_2I_fcens
# setup for arkilocal
ARKI_DIR=$WORKDIR/arki.$ENS_MEMB
CINECA_ARCHIVE_ANA=$WORKDIR/../enda/archive

# scheduler resources
PARRES="-l select=8:ncpus=32:mpiprocs=32:mem=118gb -q meteoeps"
SERRES="-l select=1:ncpus=1:mpiprocs=1:mem=2gb -l place=pack:shared -q meteoeps"
OMPRES="-l select=1:ncpus=32:mpiprocs=32:mem=110gb -l place=pack:shared -q meteoeps"
MODEL_WALLTIME=04:00:00
DELAY=3
NWPWAITELAPS=14400
NWPWAITSOLAR=36000
NWPWAITSOLAR_RUN=5400
NWPWAITWAIT=30
OPERATIONS=OMP

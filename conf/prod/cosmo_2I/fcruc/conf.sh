PARENTMODEL=COSMO
PARENTMODEL_ARKI_DS=o_lm5_ope_forecast
PARENTMODEL_FREQINI=12
PARENTMODEL_FREQANA=1
PARENTMODEL_FREQFC=1
PARENTMODEL_QRQS=.TRUE.
MODEL_NUDG=.FALSE.
MODEL_LHN=.TRUE.
MODEL_NH_NUDG=4
MODEL_NH_LHN=4
MODEL_BACK=0
MODEL_STOP=18
MODEL_BCANA=N
#MODEL_SOIL_PARENT=Y
#MODEL_SNOW_PARENT=Y
MODEL_LAKE=Y
MODEL_SLOW_PAST_H=144
MODEL_FREQINI=3
case $TIME in
    00 | 12)
	MODEL_DELTABD=12
	;;
    03 | 15)
	MODEL_DELTABD=3
	;;
    06 | 18)
	MODEL_DELTABD=6
	;;
    09 | 21)
	MODEL_DELTABD=9
	;;
esac
ENS_TOTAL_MEMB=0
# setup for remote import
ARKI_IMPDIR=~arki-imp/arki-imp/cosmo_2I_fcruc
# setup for arkilocal
ARKI_DIR=$WORKDIR/arki
MODEL_ARCHIVE_ANA=$WORKDIR/../enda/archive

# scheduler resources
PARRES="-l select=6:ncpus=32:mpiprocs=32:mem=118gb -q meteoenda"
SERRES="-l select=1:ncpus=1:mpiprocs=1:mem=2gb -l place=pack:shared -q meteoenda"
MODEL_WALLTIME=00:55:00
DELAY=2
NWPWAITELAPS=10800
NWPWAITSOLAR=18000
NWPWAITSOLAR_RUN=5400
NWPWAITWAIT=30
OPERATIONS=OM

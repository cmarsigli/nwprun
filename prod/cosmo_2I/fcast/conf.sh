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
MODEL_STOP=48
MODEL_BCANA=N
#MODEL_SOIL_PARENT=Y
#MODEL_SNOW_PARENT=Y
MODEL_LAKE=Y
MODEL_SLOW_PAST_H=144
MODEL_FREQINI=12
MODEL_DELTABD=0
ENS_TOTAL_MEMB=0
# setup for remote import
ARKI_IMPDIR=~arki-imp/arki-imp/cosmo_2I_fcast

# scheduler resources
PARRES="-l select=12:ncpus=16:mpiprocs=16:mem=100gb -q meteoenda"
SERRES="-l select=1:ncpus=1:mpiprocs=1:mem=2gb -q meteoenda"
MODEL_WALLTIME=02:00:00
DELAY=3
OPERATIONS=OM

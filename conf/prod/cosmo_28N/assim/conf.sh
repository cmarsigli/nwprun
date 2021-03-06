# definitions for parent model
PARENTMODEL=COSMO
PARENTMODEL_FREQINI=12
PARENTMODEL_FREQANA=1
PARENTMODEL_FREQFC=1
PARENTMODEL_QRQS=.TRUE.
PARENTMODEL_ARKI_DS=http://maialinux.metarpa:8090/dataset/cosmo_5I

# configuration of assimilation
MODEL_SOIL_PARENT=Y
MODEL_SNOW_PARENT=N
MODEL_LAKE=Y
MODEL_SLOW_PAST_H=144
MODEL_FREQINI=3
MODEL_BACK=$MODEL_FREQINI
MODEL_STOP=$MODEL_FREQINI
MODEL_LHN=.TRUE.
MODEL_NH_LHN=$MODEL_FREQINI
MODEL_NUDG=.TRUE.
MODEL_NH_NUDG=$(($MODEL_FREQINI + 4))

# difference (hours) between $DATE$TIME (end of assimilation window /
# start of forecast) and start of last available input forecast
# providing BC (for MODEL_BCANA=N)
MODEL_BCANA=N
if [ "$TIME" = "00" -o "$TIME" = "12" ]; then
    MODEL_DELTABD=12
    PARENTMODEL_SIGNAL=cosmo_5I_fcast
elif [ "$TIME" = "09" -o "$TIME" = "21" ]; then
    MODEL_DELTABD=9
    PARENTMODEL_SIGNAL=cosmo_5I_fcast
elif [ "$TIME" = "06" -o "$TIME" = "18" ]; then
    MODEL_DELTABD=6
    PARENTMODEL_SIGNAL=cosmo_5I_fcast
else # 03 15
    MODEL_DELTABD=3
    PARENTMODEL_SIGNAL=cosmo_5I_fcast
fi

MODEL_ARCHIVE_OUTPUT_ANA=$WORKDIR/archive
LOGSIM_PROCESS=cosmo_28N_assim
MODEL_SIGNAL=$LOGSIM_PROCESS
NWPWAITELAPS=10800
NWPWAITSOLAR=36000
NWPWAITSOLAR_RUN=3600
NWPWAITWAIT=30

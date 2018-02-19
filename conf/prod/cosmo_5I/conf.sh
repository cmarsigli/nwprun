# RADAR for LHN
ARKI_LHN_DS=$ARKI_URL/cosmo_5I_radar
RADAR_LHN_GP=10
MODEL_LHN=.TRUE.
MODEL_LHN_WORKDIR=$WORKDIR/lhn
MODEL_LHN_DT=10

# observations for nudging
BUFR_WORKDIR=$WORKDIR/bufr
MODEL_NUDG=.TRUE.

# _GP=10(radarobs),11(an),12(fc)
# definitions for parent model
PARENTMODEL=ICON
PARENTMODEL_DATADIR=$WORKDIR/input/data
PARENTMODEL_ARKI_DS=http://arkimet.metarpa:8090/dataset/iconxcosmo
PARENTMODEL_SIGNAL="DWD;ICON"
PARENTMODEL_FREQINI=12
PARENTMODEL_FREQANA=12
PARENTMODEL_FREQFC=1
PARENTMODEL_QRQS=.TRUE.
PARENTMODEL_STATIC=$HOME/data/icon
ICON_NI=384
ICON_NLEV=90
ICON_KCONTROL_FI=18
#ICON_EXTPAR=icon_extpar_arpa_R03B07_20150805.nc
#ICON_HHL=icon_hhl_arpa_R03B07.g2

# wait conf
NWPWAITELAPS=10200
NWPWAITSOLAR=36000
NWPWAITWAIT=30

# definitions for the model run
MODEL_NLEV=45
# preprocessing (interpolation)
MODEL_PRE_WORKDIR=$WORKDIR/int2lm
MODEL_PRE_DATADIR=$WORKDIR/int2lm/data
MODEL_PRE_BIN=$HOME/srcgnu/int2lm_170406_2.04a/tstint2lm
# model run
MODEL_WORKDIR=$WORKDIR/cosmo
MODEL_DATADIR=$WORKDIR/cosmo/data
MODEL_BIN=$HOME/srcgnu/cosmo_170123_5.04d3/lmparbin_all
MODEL_STATIC=$HOME/data/cosmo

# configuration of assimilation
#MODEL_BCANA=Y
# difference (hours) between $DATE$TIME (end of assimilation window /
# start of forecast) and start of last available input forecast
# providing BC (for MODEL_BCANA=N)
MODEL_DELTABD=0
MODEL_SOIL_PARENT=N
MODEL_SNOW_PARENT=N
MODEL_LAKE=Y
MODEL_SLOW_PAST_H=144
MODEL_FREQINI=12

# for distinguishing assimilation from forecast results
MODEL_ARKI_TIMERANGE_ASSIM="timerange:Timedef,0,254;proddef:GRIB:tod=0"
MODEL_ARKI_TIMERANGE_FCAST="timerange:Timedef,0,254;proddef:GRIB:tod=1"
ARKI_DS_ASSIM=$ARKI_URL/COSMO_5I
ARKI_DS_FCAST=$ARKI_URL/COSMO_5I
#ARKI_DS_INTER=$ARKI_URL/COSMO_5I_inter
MODEL_ASSIM_GP=31
MODEL_FCAST_GP=32
#MODEL_FCRUC_GP=34
#MODEL_FCENS_GP=35
MODEL_INTER_GP=33
GRIB_CENTER=80
ARKI_DIR=$WORKDIR/arki
# local configuration
[ -f "$HOME/.nwpconf" ] && source $HOME/.nwpconf

case "$HOSTNAME" in
  *.metarpa | maial* | nodo* ) # Arpae
# General
    WORKDIR=$WORK/$NWPCONF
    LOGDIR=$HOME/log
    GRIB_API_EDZW=$HOME/srcgnu/grib_api_edzw
# Radar
    RADAR_MOSAICODIR=$HOME/prelhn/Composito
    RADAR_LHNDIR=$HOME/prelhn/bufr2grib-RUC
    RADAR_DT=10
    ;;
  lami* ) # Cineca cloud
# General
    WORKDIR=$HOME/$NWPCONF
    LOGDIR=$HOME/log
    ;;
  node??? ) # Cineca HPC galileo
# General
    WORKDIR=$CINECA_SCRATCH/$NWPCONF
    LOGDIR=$CINECA_SCRATCH/log
    GRIB_API_EDZW=$WORK/grib_api_edzw
    ;;
  r????????? ) # Cineca HPC marconi
# General
    WORKDIR=$CINECA_SCRATCH/$NWPCONF
    LOGDIR=$CINECA_SCRATCH/log
    GRIB_API_EDZW=$WORK/grib_api_edzw
    ;;
esac

# GRIB coding
GRIB_CENTER=80
BUFR_ARKI_DS="$ARKI_URL/cnmc_amdar146 $ARKI_URL/cnmc_buoy $ARKI_URL/cnmc_pilot $ARKI_URL/cnmc_ship11 $ARKI_URL/cnmc_ship13 $ARKI_URL/cnmc_ship9 $ARKI_URL/cnmc_synop1 $ARKI_URL/cnmc_synop3 $ARKI_URL/cnmc_temp $ARKI_URL/cnmc_tempship $ARKI_URL/cnmc_wprof"

# ensemble prediction moved to nwpconf/cosmo_model
#ENS_MODE=.FALSE.
#if [ -n "$ENS_TOTAL_MEMB" -a -n "$ENS_MEMB" ]; then
#    ENS_MODE=.TRUE.
#fi


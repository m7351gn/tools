
INP_FILE=$1
OUT_FILE=$2

DATE=$3

gdal_translate -of NETCDF ${INP_FILE} ${OUT_FILE}.tmp
cdo -L -f nc4 -setdate,${DATE} -settime,00:00:00 -setreftime,1901-01-01,00:00:00 -invertlat ${OUT_FILE}.tmp ${OUT_FILE}
rm ${OUT_FILE}.tmp

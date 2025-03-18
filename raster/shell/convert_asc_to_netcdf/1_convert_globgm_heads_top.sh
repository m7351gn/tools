
set -x

INP_FOLDER="/eejit/depfg/sutan101/data/globgm/downloaded_from_yoda_on_2023-03-13/research-globgm/output/version_1.0/transient_1958-2015/"
OUT_FOLDER="/scratch/6574882/GENEWS/GENEWS/input/1_water_abstraction/globgm_transient_gw_heads_top/"

mkdir -p ${OUT_FOLDER}

#~ spin() {
  #~ local i=0
  #~ local sp='/-\|'
  #~ local n=${#sp}
  #~ printf ' '
  #~ sleep 0.1
  #~ while true; do
    #~ printf '\b%s' "${sp:i++%n:1}"
    #~ sleep 0.1
  #~ done
#~ }

#~ # Bash, with GNU sleep
#~ sp='/-\|'
#~ sc=0
#~ spin() {
    #~ printf "\b${sp:sc++:1}"
    #~ ((sc==${#sp})) && sc=0
    #~ sleep 0.1
#~ }
#~ endspin() {
    #~ printf '\r%s\n' "$*"
    #~ sleep 0.1
#~ }

#~ until work_done; do
   #~ spin
   #~ some_work ...
#~ done
#~ endspin

# groundwater heads
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650331.tif ${OUT_FOLDER}/globgm-wtd-19650331.nc "1965-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750630.tif ${OUT_FOLDER}/globgm-wtd-19750630.nc "1975-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19941130.tif ${OUT_FOLDER}/globgm-wtd-19941130.nc "1994-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680331.tif ${OUT_FOLDER}/globgm-wtd-19680331.nc "1968-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19831130.tif ${OUT_FOLDER}/globgm-wtd-19831130.nc "1983-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720630.tif ${OUT_FOLDER}/globgm-wtd-19720630.nc "1972-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20131231.tif ${OUT_FOLDER}/globgm-wtd-20131231.nc "2013-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680531.tif ${OUT_FOLDER}/globgm-wtd-19680531.nc "1968-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940930.tif ${OUT_FOLDER}/globgm-wtd-19940930.nc "1994-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19761031.tif ${OUT_FOLDER}/globgm-wtd-19761031.nc "1976-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870430.tif ${OUT_FOLDER}/globgm-wtd-19870430.nc "1987-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840229.tif ${OUT_FOLDER}/globgm-wtd-19840229.nc "1984-02-29" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740930.tif ${OUT_FOLDER}/globgm-wtd-19740930.nc "1974-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090331.tif ${OUT_FOLDER}/globgm-wtd-20090331.nc "2009-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19831231.tif ${OUT_FOLDER}/globgm-wtd-19831231.nc "1983-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950131.tif ${OUT_FOLDER}/globgm-wtd-19950131.nc "1995-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120131.tif ${OUT_FOLDER}/globgm-wtd-20120131.nc "2012-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19581231.tif ${OUT_FOLDER}/globgm-wtd-19581231.nc "1958-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620630.tif ${OUT_FOLDER}/globgm-wtd-19620630.nc "1962-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900831.tif ${OUT_FOLDER}/globgm-wtd-19900831.nc "1990-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820331.tif ${OUT_FOLDER}/globgm-wtd-19820331.nc "1982-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610531.tif ${OUT_FOLDER}/globgm-wtd-19610531.nc "1961-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20021231.tif ${OUT_FOLDER}/globgm-wtd-20021231.nc "2002-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770131.tif ${OUT_FOLDER}/globgm-wtd-19770131.nc "1977-01-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19721031.tif ${OUT_FOLDER}/globgm-wtd-19721031.nc "1972-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010131.tif ${OUT_FOLDER}/globgm-wtd-20010131.nc "2001-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700831.tif ${OUT_FOLDER}/globgm-wtd-19700831.nc "1970-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20081031.tif ${OUT_FOLDER}/globgm-wtd-20081031.nc "2008-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600731.tif ${OUT_FOLDER}/globgm-wtd-19600731.nc "1960-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600430.tif ${OUT_FOLDER}/globgm-wtd-19600430.nc "1960-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060430.tif ${OUT_FOLDER}/globgm-wtd-20060430.nc "2006-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130430.tif ${OUT_FOLDER}/globgm-wtd-20130430.nc "2013-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030930.tif ${OUT_FOLDER}/globgm-wtd-20030930.nc "2003-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580331.tif ${OUT_FOLDER}/globgm-wtd-19580331.nc "1958-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20111031.tif ${OUT_FOLDER}/globgm-wtd-20111031.nc "2011-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080229.tif ${OUT_FOLDER}/globgm-wtd-20080229.nc "2008-02-29" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19671031.tif ${OUT_FOLDER}/globgm-wtd-19671031.nc "1967-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660331.tif ${OUT_FOLDER}/globgm-wtd-19660331.nc "1966-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890131.tif ${OUT_FOLDER}/globgm-wtd-19890131.nc "1989-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790831.tif ${OUT_FOLDER}/globgm-wtd-19790831.nc "1979-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19641231.tif ${OUT_FOLDER}/globgm-wtd-19641231.nc "1964-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680131.tif ${OUT_FOLDER}/globgm-wtd-19680131.nc "1968-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080430.tif ${OUT_FOLDER}/globgm-wtd-20080430.nc "2008-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990228.tif ${OUT_FOLDER}/globgm-wtd-19990228.nc "1999-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940630.tif ${OUT_FOLDER}/globgm-wtd-19940630.nc "1994-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140831.tif ${OUT_FOLDER}/globgm-wtd-20140831.nc "2014-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890430.tif ${OUT_FOLDER}/globgm-wtd-19890430.nc "1989-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660930.tif ${OUT_FOLDER}/globgm-wtd-19660930.nc "1966-09-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19661231.tif ${OUT_FOLDER}/globgm-wtd-19661231.nc "1966-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19891231.tif ${OUT_FOLDER}/globgm-wtd-19891231.nc "1989-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19731231.tif ${OUT_FOLDER}/globgm-wtd-19731231.nc "1973-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19871130.tif ${OUT_FOLDER}/globgm-wtd-19871130.nc "1987-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130930.tif ${OUT_FOLDER}/globgm-wtd-20130930.nc "2013-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040131.tif ${OUT_FOLDER}/globgm-wtd-20040131.nc "2004-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19771031.tif ${OUT_FOLDER}/globgm-wtd-19771031.nc "1977-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150630.tif ${OUT_FOLDER}/globgm-wtd-20150630.nc "2015-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760229.tif ${OUT_FOLDER}/globgm-wtd-19760229.nc "1976-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650531.tif ${OUT_FOLDER}/globgm-wtd-19650531.nc "1965-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820430.tif ${OUT_FOLDER}/globgm-wtd-19820430.nc "1982-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860430.tif ${OUT_FOLDER}/globgm-wtd-19860430.nc "1986-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980930.tif ${OUT_FOLDER}/globgm-wtd-19980930.nc "1998-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19901231.tif ${OUT_FOLDER}/globgm-wtd-19901231.nc "1990-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20151130.tif ${OUT_FOLDER}/globgm-wtd-20151130.nc "2015-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870131.tif ${OUT_FOLDER}/globgm-wtd-19870131.nc "1987-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000131.tif ${OUT_FOLDER}/globgm-wtd-20000131.nc "2000-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060630.tif ${OUT_FOLDER}/globgm-wtd-20060630.nc "2006-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19691130.tif ${OUT_FOLDER}/globgm-wtd-19691130.nc "1969-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790430.tif ${OUT_FOLDER}/globgm-wtd-19790430.nc "1979-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000731.tif ${OUT_FOLDER}/globgm-wtd-20000731.nc "2000-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19621031.tif ${OUT_FOLDER}/globgm-wtd-19621031.nc "1962-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590630.tif ${OUT_FOLDER}/globgm-wtd-19590630.nc "1959-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970228.tif ${OUT_FOLDER}/globgm-wtd-19970228.nc "1997-02-28" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710430.tif ${OUT_FOLDER}/globgm-wtd-19710430.nc "1971-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19921231.tif ${OUT_FOLDER}/globgm-wtd-19921231.nc "1992-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910228.tif ${OUT_FOLDER}/globgm-wtd-19910228.nc "1991-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140228.tif ${OUT_FOLDER}/globgm-wtd-20140228.nc "2014-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750831.tif ${OUT_FOLDER}/globgm-wtd-19750831.nc "1975-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19951231.tif ${OUT_FOLDER}/globgm-wtd-19951231.nc "1995-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640831.tif ${OUT_FOLDER}/globgm-wtd-19640831.nc "1964-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760531.tif ${OUT_FOLDER}/globgm-wtd-19760531.nc "1976-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19601231.tif ${OUT_FOLDER}/globgm-wtd-19601231.nc "1960-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19731130.tif ${OUT_FOLDER}/globgm-wtd-19731130.nc "1973-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930131.tif ${OUT_FOLDER}/globgm-wtd-19930131.nc "1993-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19691231.tif ${OUT_FOLDER}/globgm-wtd-19691231.nc "1969-12-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20141231.tif ${OUT_FOLDER}/globgm-wtd-20141231.nc "2014-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870731.tif ${OUT_FOLDER}/globgm-wtd-19870731.nc "1987-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19791231.tif ${OUT_FOLDER}/globgm-wtd-19791231.nc "1979-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19741031.tif ${OUT_FOLDER}/globgm-wtd-19741031.nc "1974-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000630.tif ${OUT_FOLDER}/globgm-wtd-20000630.nc "2000-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20021130.tif ${OUT_FOLDER}/globgm-wtd-20021130.nc "2002-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740430.tif ${OUT_FOLDER}/globgm-wtd-19740430.nc "1974-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19701130.tif ${OUT_FOLDER}/globgm-wtd-19701130.nc "1970-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840831.tif ${OUT_FOLDER}/globgm-wtd-19840831.nc "1984-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800131.tif ${OUT_FOLDER}/globgm-wtd-19800131.nc "1980-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870531.tif ${OUT_FOLDER}/globgm-wtd-19870531.nc "1987-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880430.tif ${OUT_FOLDER}/globgm-wtd-19880430.nc "1988-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780531.tif ${OUT_FOLDER}/globgm-wtd-19780531.nc "1978-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990131.tif ${OUT_FOLDER}/globgm-wtd-19990131.nc "1999-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590831.tif ${OUT_FOLDER}/globgm-wtd-19590831.nc "1959-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900331.tif ${OUT_FOLDER}/globgm-wtd-19900331.nc "1990-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900430.tif ${OUT_FOLDER}/globgm-wtd-19900430.nc "1990-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740831.tif ${OUT_FOLDER}/globgm-wtd-19740831.nc "1974-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580131.tif ${OUT_FOLDER}/globgm-wtd-19580131.nc "1958-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080331.tif ${OUT_FOLDER}/globgm-wtd-20080331.nc "2008-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20001231.tif ${OUT_FOLDER}/globgm-wtd-20001231.nc "2000-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19591031.tif ${OUT_FOLDER}/globgm-wtd-19591031.nc "1959-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740228.tif ${OUT_FOLDER}/globgm-wtd-19740228.nc "1974-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20121031.tif ${OUT_FOLDER}/globgm-wtd-20121031.nc "2012-10-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580531.tif ${OUT_FOLDER}/globgm-wtd-19580531.nc "1958-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790531.tif ${OUT_FOLDER}/globgm-wtd-19790531.nc "1979-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630630.tif ${OUT_FOLDER}/globgm-wtd-19630630.nc "1963-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630930.tif ${OUT_FOLDER}/globgm-wtd-19630930.nc "1963-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19611130.tif ${OUT_FOLDER}/globgm-wtd-19611130.nc "1961-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100430.tif ${OUT_FOLDER}/globgm-wtd-20100430.nc "2010-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600930.tif ${OUT_FOLDER}/globgm-wtd-19600930.nc "1960-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870331.tif ${OUT_FOLDER}/globgm-wtd-19870331.nc "1987-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19711031.tif ${OUT_FOLDER}/globgm-wtd-19711031.nc "1971-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810731.tif ${OUT_FOLDER}/globgm-wtd-19810731.nc "1981-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19911231.tif ${OUT_FOLDER}/globgm-wtd-19911231.nc "1991-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030831.tif ${OUT_FOLDER}/globgm-wtd-20030831.nc "2003-08-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050630.tif ${OUT_FOLDER}/globgm-wtd-20050630.nc "2005-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20051130.tif ${OUT_FOLDER}/globgm-wtd-20051130.nc "2005-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600831.tif ${OUT_FOLDER}/globgm-wtd-19600831.nc "1960-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700630.tif ${OUT_FOLDER}/globgm-wtd-19700630.nc "1970-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060531.tif ${OUT_FOLDER}/globgm-wtd-20060531.nc "2006-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19711130.tif ${OUT_FOLDER}/globgm-wtd-19711130.nc "1971-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630228.tif ${OUT_FOLDER}/globgm-wtd-19630228.nc "1963-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710131.tif ${OUT_FOLDER}/globgm-wtd-19710131.nc "1971-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680831.tif ${OUT_FOLDER}/globgm-wtd-19680831.nc "1968-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110228.tif ${OUT_FOLDER}/globgm-wtd-20110228.nc "2011-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19591231.tif ${OUT_FOLDER}/globgm-wtd-19591231.nc "1959-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780731.tif ${OUT_FOLDER}/globgm-wtd-19780731.nc "1978-07-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19671231.tif ${OUT_FOLDER}/globgm-wtd-19671231.nc "1967-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920131.tif ${OUT_FOLDER}/globgm-wtd-19920131.nc "1992-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670131.tif ${OUT_FOLDER}/globgm-wtd-19670131.nc "1967-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660731.tif ${OUT_FOLDER}/globgm-wtd-19660731.nc "1966-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590930.tif ${OUT_FOLDER}/globgm-wtd-19590930.nc "1959-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740630.tif ${OUT_FOLDER}/globgm-wtd-19740630.nc "1974-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830930.tif ${OUT_FOLDER}/globgm-wtd-19830930.nc "1983-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830731.tif ${OUT_FOLDER}/globgm-wtd-19830731.nc "1983-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580228.tif ${OUT_FOLDER}/globgm-wtd-19580228.nc "1958-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720731.tif ${OUT_FOLDER}/globgm-wtd-19720731.nc "1972-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860930.tif ${OUT_FOLDER}/globgm-wtd-19860930.nc "1986-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20151231.tif ${OUT_FOLDER}/globgm-wtd-20151231.nc "2015-12-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020731.tif ${OUT_FOLDER}/globgm-wtd-20020731.nc "2002-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640430.tif ${OUT_FOLDER}/globgm-wtd-19640430.nc "1964-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750331.tif ${OUT_FOLDER}/globgm-wtd-19750331.nc "1975-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990731.tif ${OUT_FOLDER}/globgm-wtd-19990731.nc "1999-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960331.tif ${OUT_FOLDER}/globgm-wtd-19960331.nc "1996-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20091130.tif ${OUT_FOLDER}/globgm-wtd-20091130.nc "2009-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970930.tif ${OUT_FOLDER}/globgm-wtd-19970930.nc "1997-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20131031.tif ${OUT_FOLDER}/globgm-wtd-20131031.nc "2013-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19701231.tif ${OUT_FOLDER}/globgm-wtd-19701231.nc "1970-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940731.tif ${OUT_FOLDER}/globgm-wtd-19940731.nc "1994-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730131.tif ${OUT_FOLDER}/globgm-wtd-19730131.nc "1973-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960731.tif ${OUT_FOLDER}/globgm-wtd-19960731.nc "1996-07-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19801130.tif ${OUT_FOLDER}/globgm-wtd-19801130.nc "1980-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710630.tif ${OUT_FOLDER}/globgm-wtd-19710630.nc "1971-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030731.tif ${OUT_FOLDER}/globgm-wtd-20030731.nc "2003-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130731.tif ${OUT_FOLDER}/globgm-wtd-20130731.nc "2013-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590731.tif ${OUT_FOLDER}/globgm-wtd-19590731.nc "1959-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860228.tif ${OUT_FOLDER}/globgm-wtd-19860228.nc "1986-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19921130.tif ${OUT_FOLDER}/globgm-wtd-19921130.nc "1992-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780331.tif ${OUT_FOLDER}/globgm-wtd-19780331.nc "1978-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20061231.tif ${OUT_FOLDER}/globgm-wtd-20061231.nc "2006-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770731.tif ${OUT_FOLDER}/globgm-wtd-19770731.nc "1977-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19841130.tif ${OUT_FOLDER}/globgm-wtd-19841130.nc "1984-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660430.tif ${OUT_FOLDER}/globgm-wtd-19660430.nc "1966-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100228.tif ${OUT_FOLDER}/globgm-wtd-20100228.nc "2010-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070731.tif ${OUT_FOLDER}/globgm-wtd-20070731.nc "2007-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620131.tif ${OUT_FOLDER}/globgm-wtd-19620131.nc "1962-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680930.tif ${OUT_FOLDER}/globgm-wtd-19680930.nc "1968-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700930.tif ${OUT_FOLDER}/globgm-wtd-19700930.nc "1970-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19681130.tif ${OUT_FOLDER}/globgm-wtd-19681130.nc "1968-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060228.tif ${OUT_FOLDER}/globgm-wtd-20060228.nc "2006-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19851031.tif ${OUT_FOLDER}/globgm-wtd-19851031.nc "1985-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060131.tif ${OUT_FOLDER}/globgm-wtd-20060131.nc "2006-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130228.tif ${OUT_FOLDER}/globgm-wtd-20130228.nc "2013-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800930.tif ${OUT_FOLDER}/globgm-wtd-19800930.nc "1980-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030331.tif ${OUT_FOLDER}/globgm-wtd-20030331.nc "2003-03-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950731.tif ${OUT_FOLDER}/globgm-wtd-19950731.nc "1995-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800331.tif ${OUT_FOLDER}/globgm-wtd-19800331.nc "1980-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870930.tif ${OUT_FOLDER}/globgm-wtd-19870930.nc "1987-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980831.tif ${OUT_FOLDER}/globgm-wtd-19980831.nc "1998-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740531.tif ${OUT_FOLDER}/globgm-wtd-19740531.nc "1974-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19961130.tif ${OUT_FOLDER}/globgm-wtd-19961130.nc "1996-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740131.tif ${OUT_FOLDER}/globgm-wtd-19740131.nc "1974-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19881231.tif ${OUT_FOLDER}/globgm-wtd-19881231.nc "1988-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930831.tif ${OUT_FOLDER}/globgm-wtd-19930831.nc "1993-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110731.tif ${OUT_FOLDER}/globgm-wtd-20110731.nc "2011-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960430.tif ${OUT_FOLDER}/globgm-wtd-19960430.nc "1996-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590430.tif ${OUT_FOLDER}/globgm-wtd-19590430.nc "1959-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20041130.tif ${OUT_FOLDER}/globgm-wtd-20041130.nc "2004-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19621231.tif ${OUT_FOLDER}/globgm-wtd-19621231.nc "1962-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600531.tif ${OUT_FOLDER}/globgm-wtd-19600531.nc "1960-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20031231.tif ${OUT_FOLDER}/globgm-wtd-20031231.nc "2003-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20061031.tif ${OUT_FOLDER}/globgm-wtd-20061031.nc "2006-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950831.tif ${OUT_FOLDER}/globgm-wtd-19950831.nc "1995-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880331.tif ${OUT_FOLDER}/globgm-wtd-19880331.nc "1988-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110331.tif ${OUT_FOLDER}/globgm-wtd-20110331.nc "2011-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980531.tif ${OUT_FOLDER}/globgm-wtd-19980531.nc "1998-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910131.tif ${OUT_FOLDER}/globgm-wtd-19910131.nc "1991-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850228.tif ${OUT_FOLDER}/globgm-wtd-19850228.nc "1985-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19991231.tif ${OUT_FOLDER}/globgm-wtd-19991231.nc "1999-12-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730531.tif ${OUT_FOLDER}/globgm-wtd-19730531.nc "1973-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19751130.tif ${OUT_FOLDER}/globgm-wtd-19751130.nc "1975-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19951031.tif ${OUT_FOLDER}/globgm-wtd-19951031.nc "1995-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920731.tif ${OUT_FOLDER}/globgm-wtd-19920731.nc "1992-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20131130.tif ${OUT_FOLDER}/globgm-wtd-20131130.nc "2013-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030430.tif ${OUT_FOLDER}/globgm-wtd-20030430.nc "2003-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720831.tif ${OUT_FOLDER}/globgm-wtd-19720831.nc "1972-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19891031.tif ${OUT_FOLDER}/globgm-wtd-19891031.nc "1989-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110630.tif ${OUT_FOLDER}/globgm-wtd-20110630.nc "2011-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19961231.tif ${OUT_FOLDER}/globgm-wtd-19961231.nc "1996-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20021031.tif ${OUT_FOLDER}/globgm-wtd-20021031.nc "2002-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600630.tif ${OUT_FOLDER}/globgm-wtd-19600630.nc "1960-06-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920831.tif ${OUT_FOLDER}/globgm-wtd-19920831.nc "1992-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920531.tif ${OUT_FOLDER}/globgm-wtd-19920531.nc "1992-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700731.tif ${OUT_FOLDER}/globgm-wtd-19700731.nc "1970-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840131.tif ${OUT_FOLDER}/globgm-wtd-19840131.nc "1984-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040430.tif ${OUT_FOLDER}/globgm-wtd-20040430.nc "2004-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19621130.tif ${OUT_FOLDER}/globgm-wtd-19621130.nc "1962-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870831.tif ${OUT_FOLDER}/globgm-wtd-19870831.nc "1987-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940430.tif ${OUT_FOLDER}/globgm-wtd-19940430.nc "1994-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050228.tif ${OUT_FOLDER}/globgm-wtd-20050228.nc "2005-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690430.tif ${OUT_FOLDER}/globgm-wtd-19690430.nc "1969-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980430.tif ${OUT_FOLDER}/globgm-wtd-19980430.nc "1998-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19891130.tif ${OUT_FOLDER}/globgm-wtd-19891130.nc "1989-11-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910630.tif ${OUT_FOLDER}/globgm-wtd-19910630.nc "1991-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940131.tif ${OUT_FOLDER}/globgm-wtd-19940131.nc "1994-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19721130.tif ${OUT_FOLDER}/globgm-wtd-19721130.nc "1972-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890630.tif ${OUT_FOLDER}/globgm-wtd-19890630.nc "1989-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19811031.tif ${OUT_FOLDER}/globgm-wtd-19811031.nc "1981-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19821130.tif ${OUT_FOLDER}/globgm-wtd-19821130.nc "1982-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20011031.tif ${OUT_FOLDER}/globgm-wtd-20011031.nc "2001-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920331.tif ${OUT_FOLDER}/globgm-wtd-19920331.nc "1992-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19611231.tif ${OUT_FOLDER}/globgm-wtd-19611231.nc "1961-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590228.tif ${OUT_FOLDER}/globgm-wtd-19590228.nc "1959-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970731.tif ${OUT_FOLDER}/globgm-wtd-19970731.nc "1997-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730331.tif ${OUT_FOLDER}/globgm-wtd-19730331.nc "1973-03-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130331.tif ${OUT_FOLDER}/globgm-wtd-20130331.nc "2013-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20111231.tif ${OUT_FOLDER}/globgm-wtd-20111231.nc "2011-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640531.tif ${OUT_FOLDER}/globgm-wtd-19640531.nc "1964-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970831.tif ${OUT_FOLDER}/globgm-wtd-19970831.nc "1997-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19771231.tif ${OUT_FOLDER}/globgm-wtd-19771231.nc "1977-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20071130.tif ${OUT_FOLDER}/globgm-wtd-20071130.nc "2007-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650831.tif ${OUT_FOLDER}/globgm-wtd-19650831.nc "1965-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620930.tif ${OUT_FOLDER}/globgm-wtd-19620930.nc "1962-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19941031.tif ${OUT_FOLDER}/globgm-wtd-19941031.nc "1994-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820531.tif ${OUT_FOLDER}/globgm-wtd-19820531.nc "1982-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890331.tif ${OUT_FOLDER}/globgm-wtd-19890331.nc "1989-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940831.tif ${OUT_FOLDER}/globgm-wtd-19940831.nc "1994-08-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610831.tif ${OUT_FOLDER}/globgm-wtd-19610831.nc "1961-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610331.tif ${OUT_FOLDER}/globgm-wtd-19610331.nc "1961-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19631130.tif ${OUT_FOLDER}/globgm-wtd-19631130.nc "1963-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19931130.tif ${OUT_FOLDER}/globgm-wtd-19931130.nc "1993-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19661130.tif ${OUT_FOLDER}/globgm-wtd-19661130.nc "1966-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710731.tif ${OUT_FOLDER}/globgm-wtd-19710731.nc "1971-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910331.tif ${OUT_FOLDER}/globgm-wtd-19910331.nc "1991-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010430.tif ${OUT_FOLDER}/globgm-wtd-20010430.nc "2001-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080630.tif ${OUT_FOLDER}/globgm-wtd-20080630.nc "2008-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19711231.tif ${OUT_FOLDER}/globgm-wtd-19711231.nc "1971-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690228.tif ${OUT_FOLDER}/globgm-wtd-19690228.nc "1969-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920229.tif ${OUT_FOLDER}/globgm-wtd-19920229.nc "1992-02-29" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630531.tif ${OUT_FOLDER}/globgm-wtd-19630531.nc "1963-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700228.tif ${OUT_FOLDER}/globgm-wtd-19700228.nc "1970-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19581031.tif ${OUT_FOLDER}/globgm-wtd-19581031.nc "1958-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690131.tif ${OUT_FOLDER}/globgm-wtd-19690131.nc "1969-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930930.tif ${OUT_FOLDER}/globgm-wtd-19930930.nc "1993-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120430.tif ${OUT_FOLDER}/globgm-wtd-20120430.nc "2012-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980331.tif ${OUT_FOLDER}/globgm-wtd-19980331.nc "1998-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010831.tif ${OUT_FOLDER}/globgm-wtd-20010831.nc "2001-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730731.tif ${OUT_FOLDER}/globgm-wtd-19730731.nc "1973-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910930.tif ${OUT_FOLDER}/globgm-wtd-19910930.nc "1991-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20051031.tif ${OUT_FOLDER}/globgm-wtd-20051031.nc "2005-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830831.tif ${OUT_FOLDER}/globgm-wtd-19830831.nc "1983-08-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800229.tif ${OUT_FOLDER}/globgm-wtd-19800229.nc "1980-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820831.tif ${OUT_FOLDER}/globgm-wtd-19820831.nc "1982-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770531.tif ${OUT_FOLDER}/globgm-wtd-19770531.nc "1977-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030131.tif ${OUT_FOLDER}/globgm-wtd-20030131.nc "2003-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630331.tif ${OUT_FOLDER}/globgm-wtd-19630331.nc "1963-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20001031.tif ${OUT_FOLDER}/globgm-wtd-20001031.nc "2000-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780831.tif ${OUT_FOLDER}/globgm-wtd-19780831.nc "1978-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960831.tif ${OUT_FOLDER}/globgm-wtd-19960831.nc "1996-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930430.tif ${OUT_FOLDER}/globgm-wtd-19930430.nc "1993-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960229.tif ${OUT_FOLDER}/globgm-wtd-19960229.nc "1996-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600131.tif ${OUT_FOLDER}/globgm-wtd-19600131.nc "1960-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750430.tif ${OUT_FOLDER}/globgm-wtd-19750430.nc "1975-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080731.tif ${OUT_FOLDER}/globgm-wtd-20080731.nc "2008-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650930.tif ${OUT_FOLDER}/globgm-wtd-19650930.nc "1965-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150531.tif ${OUT_FOLDER}/globgm-wtd-20150531.nc "2015-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840930.tif ${OUT_FOLDER}/globgm-wtd-19840930.nc "1984-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990531.tif ${OUT_FOLDER}/globgm-wtd-19990531.nc "1999-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700531.tif ${OUT_FOLDER}/globgm-wtd-19700531.nc "1970-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810131.tif ${OUT_FOLDER}/globgm-wtd-19810131.nc "1981-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19791130.tif ${OUT_FOLDER}/globgm-wtd-19791130.nc "1979-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620731.tif ${OUT_FOLDER}/globgm-wtd-19620731.nc "1962-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830228.tif ${OUT_FOLDER}/globgm-wtd-19830228.nc "1983-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580831.tif ${OUT_FOLDER}/globgm-wtd-19580831.nc "1958-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800630.tif ${OUT_FOLDER}/globgm-wtd-19800630.nc "1980-06-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19771130.tif ${OUT_FOLDER}/globgm-wtd-19771130.nc "1977-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120731.tif ${OUT_FOLDER}/globgm-wtd-20120731.nc "2012-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19911031.tif ${OUT_FOLDER}/globgm-wtd-19911031.nc "1991-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810930.tif ${OUT_FOLDER}/globgm-wtd-19810930.nc "1981-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780228.tif ${OUT_FOLDER}/globgm-wtd-19780228.nc "1978-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670831.tif ${OUT_FOLDER}/globgm-wtd-19670831.nc "1967-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760630.tif ${OUT_FOLDER}/globgm-wtd-19760630.nc "1976-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130630.tif ${OUT_FOLDER}/globgm-wtd-20130630.nc "2013-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650228.tif ${OUT_FOLDER}/globgm-wtd-19650228.nc "1965-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820630.tif ${OUT_FOLDER}/globgm-wtd-19820630.nc "1982-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760131.tif ${OUT_FOLDER}/globgm-wtd-19760131.nc "1976-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020430.tif ${OUT_FOLDER}/globgm-wtd-20020430.nc "2002-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040731.tif ${OUT_FOLDER}/globgm-wtd-20040731.nc "2004-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19971231.tif ${OUT_FOLDER}/globgm-wtd-19971231.nc "1997-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790731.tif ${OUT_FOLDER}/globgm-wtd-19790731.nc "1979-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700331.tif ${OUT_FOLDER}/globgm-wtd-19700331.nc "1970-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19681031.tif ${OUT_FOLDER}/globgm-wtd-19681031.nc "1968-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100831.tif ${OUT_FOLDER}/globgm-wtd-20100831.nc "2010-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060930.tif ${OUT_FOLDER}/globgm-wtd-20060930.nc "2006-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660131.tif ${OUT_FOLDER}/globgm-wtd-19660131.nc "1966-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760731.tif ${OUT_FOLDER}/globgm-wtd-19760731.nc "1976-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720131.tif ${OUT_FOLDER}/globgm-wtd-19720131.nc "1972-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610630.tif ${OUT_FOLDER}/globgm-wtd-19610630.nc "1961-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19661031.tif ${OUT_FOLDER}/globgm-wtd-19661031.nc "1966-10-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19941231.tif ${OUT_FOLDER}/globgm-wtd-19941231.nc "1994-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20071031.tif ${OUT_FOLDER}/globgm-wtd-20071031.nc "2007-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650131.tif ${OUT_FOLDER}/globgm-wtd-19650131.nc "1965-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800831.tif ${OUT_FOLDER}/globgm-wtd-19800831.nc "1980-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890531.tif ${OUT_FOLDER}/globgm-wtd-19890531.nc "1989-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690531.tif ${OUT_FOLDER}/globgm-wtd-19690531.nc "1969-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970531.tif ${OUT_FOLDER}/globgm-wtd-19970531.nc "1997-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980630.tif ${OUT_FOLDER}/globgm-wtd-19980630.nc "1998-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19981130.tif ${OUT_FOLDER}/globgm-wtd-19981130.nc "1998-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830430.tif ${OUT_FOLDER}/globgm-wtd-19830430.nc "1983-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120930.tif ${OUT_FOLDER}/globgm-wtd-20120930.nc "2012-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140331.tif ${OUT_FOLDER}/globgm-wtd-20140331.nc "2014-03-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680430.tif ${OUT_FOLDER}/globgm-wtd-19680430.nc "1968-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860630.tif ${OUT_FOLDER}/globgm-wtd-19860630.nc "1986-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770430.tif ${OUT_FOLDER}/globgm-wtd-19770430.nc "1977-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20091231.tif ${OUT_FOLDER}/globgm-wtd-20091231.nc "2009-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050430.tif ${OUT_FOLDER}/globgm-wtd-20050430.nc "2005-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080531.tif ${OUT_FOLDER}/globgm-wtd-20080531.nc "2008-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19651130.tif ${OUT_FOLDER}/globgm-wtd-19651130.nc "1965-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640331.tif ${OUT_FOLDER}/globgm-wtd-19640331.nc "1964-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070430.tif ${OUT_FOLDER}/globgm-wtd-20070430.nc "2007-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690731.tif ${OUT_FOLDER}/globgm-wtd-19690731.nc "1969-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140430.tif ${OUT_FOLDER}/globgm-wtd-20140430.nc "2014-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010331.tif ${OUT_FOLDER}/globgm-wtd-20010331.nc "2001-03-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640131.tif ${OUT_FOLDER}/globgm-wtd-19640131.nc "1964-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140531.tif ${OUT_FOLDER}/globgm-wtd-20140531.nc "2014-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880731.tif ${OUT_FOLDER}/globgm-wtd-19880731.nc "1988-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900228.tif ${OUT_FOLDER}/globgm-wtd-19900228.nc "1990-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750228.tif ${OUT_FOLDER}/globgm-wtd-19750228.nc "1975-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900531.tif ${OUT_FOLDER}/globgm-wtd-19900531.nc "1990-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750930.tif ${OUT_FOLDER}/globgm-wtd-19750930.nc "1975-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640731.tif ${OUT_FOLDER}/globgm-wtd-19640731.nc "1964-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830331.tif ${OUT_FOLDER}/globgm-wtd-19830331.nc "1983-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710930.tif ${OUT_FOLDER}/globgm-wtd-19710930.nc "1971-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790228.tif ${OUT_FOLDER}/globgm-wtd-19790228.nc "1979-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620228.tif ${OUT_FOLDER}/globgm-wtd-19620228.nc "1962-02-28" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130531.tif ${OUT_FOLDER}/globgm-wtd-20130531.nc "2013-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850831.tif ${OUT_FOLDER}/globgm-wtd-19850831.nc "1985-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960930.tif ${OUT_FOLDER}/globgm-wtd-19960930.nc "1996-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19971130.tif ${OUT_FOLDER}/globgm-wtd-19971130.nc "1997-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000531.tif ${OUT_FOLDER}/globgm-wtd-20000531.nc "2000-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19701031.tif ${OUT_FOLDER}/globgm-wtd-19701031.nc "1970-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910531.tif ${OUT_FOLDER}/globgm-wtd-19910531.nc "1991-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780430.tif ${OUT_FOLDER}/globgm-wtd-19780430.nc "1978-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810331.tif ${OUT_FOLDER}/globgm-wtd-19810331.nc "1981-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850430.tif ${OUT_FOLDER}/globgm-wtd-19850430.nc "1985-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19591130.tif ${OUT_FOLDER}/globgm-wtd-19591130.nc "1959-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710228.tif ${OUT_FOLDER}/globgm-wtd-19710228.nc "1971-02-28" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840331.tif ${OUT_FOLDER}/globgm-wtd-19840331.nc "1984-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150331.tif ${OUT_FOLDER}/globgm-wtd-20150331.nc "2015-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870630.tif ${OUT_FOLDER}/globgm-wtd-19870630.nc "1987-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19861231.tif ${OUT_FOLDER}/globgm-wtd-19861231.nc "1986-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20081130.tif ${OUT_FOLDER}/globgm-wtd-20081130.nc "2008-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930531.tif ${OUT_FOLDER}/globgm-wtd-19930531.nc "1993-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670331.tif ${OUT_FOLDER}/globgm-wtd-19670331.nc "1967-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070831.tif ${OUT_FOLDER}/globgm-wtd-20070831.nc "2007-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120630.tif ${OUT_FOLDER}/globgm-wtd-20120630.nc "2012-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660228.tif ${OUT_FOLDER}/globgm-wtd-19660228.nc "1966-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820228.tif ${OUT_FOLDER}/globgm-wtd-19820228.nc "1982-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890731.tif ${OUT_FOLDER}/globgm-wtd-19890731.nc "1989-07-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630131.tif ${OUT_FOLDER}/globgm-wtd-19630131.nc "1963-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950930.tif ${OUT_FOLDER}/globgm-wtd-19950930.nc "1995-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110831.tif ${OUT_FOLDER}/globgm-wtd-20110831.nc "2011-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590531.tif ${OUT_FOLDER}/globgm-wtd-19590531.nc "1959-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910731.tif ${OUT_FOLDER}/globgm-wtd-19910731.nc "1991-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670731.tif ${OUT_FOLDER}/globgm-wtd-19670731.nc "1967-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030228.tif ${OUT_FOLDER}/globgm-wtd-20030228.nc "2003-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800731.tif ${OUT_FOLDER}/globgm-wtd-19800731.nc "1980-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19731031.tif ${OUT_FOLDER}/globgm-wtd-19731031.nc "1973-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100531.tif ${OUT_FOLDER}/globgm-wtd-20100531.nc "2010-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860131.tif ${OUT_FOLDER}/globgm-wtd-19860131.nc "1986-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010731.tif ${OUT_FOLDER}/globgm-wtd-20010731.nc "2001-07-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610731.tif ${OUT_FOLDER}/globgm-wtd-19610731.nc "1961-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790930.tif ${OUT_FOLDER}/globgm-wtd-19790930.nc "1979-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20121130.tif ${OUT_FOLDER}/globgm-wtd-20121130.nc "2012-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100630.tif ${OUT_FOLDER}/globgm-wtd-20100630.nc "2010-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950630.tif ${OUT_FOLDER}/globgm-wtd-19950630.nc "1995-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670430.tif ${OUT_FOLDER}/globgm-wtd-19670430.nc "1967-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710331.tif ${OUT_FOLDER}/globgm-wtd-19710331.nc "1971-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880831.tif ${OUT_FOLDER}/globgm-wtd-19880831.nc "1988-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620331.tif ${OUT_FOLDER}/globgm-wtd-19620331.nc "1962-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860331.tif ${OUT_FOLDER}/globgm-wtd-19860331.nc "1986-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810831.tif ${OUT_FOLDER}/globgm-wtd-19810831.nc "1981-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20111130.tif ${OUT_FOLDER}/globgm-wtd-20111130.nc "2011-11-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010930.tif ${OUT_FOLDER}/globgm-wtd-20010930.nc "2001-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730228.tif ${OUT_FOLDER}/globgm-wtd-19730228.nc "1973-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040229.tif ${OUT_FOLDER}/globgm-wtd-20040229.nc "2004-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710831.tif ${OUT_FOLDER}/globgm-wtd-19710831.nc "1971-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770930.tif ${OUT_FOLDER}/globgm-wtd-19770930.nc "1977-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690630.tif ${OUT_FOLDER}/globgm-wtd-19690630.nc "1969-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050331.tif ${OUT_FOLDER}/globgm-wtd-20050331.nc "2005-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780930.tif ${OUT_FOLDER}/globgm-wtd-19780930.nc "1978-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900630.tif ${OUT_FOLDER}/globgm-wtd-19900630.nc "1990-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070930.tif ${OUT_FOLDER}/globgm-wtd-20070930.nc "2007-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19681231.tif ${OUT_FOLDER}/globgm-wtd-19681231.nc "1968-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720930.tif ${OUT_FOLDER}/globgm-wtd-19720930.nc "1972-09-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610430.tif ${OUT_FOLDER}/globgm-wtd-19610430.nc "1961-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19651231.tif ${OUT_FOLDER}/globgm-wtd-19651231.nc "1965-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090228.tif ${OUT_FOLDER}/globgm-wtd-20090228.nc "2009-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19781031.tif ${OUT_FOLDER}/globgm-wtd-19781031.nc "1978-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20011231.tif ${OUT_FOLDER}/globgm-wtd-20011231.nc "2001-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110131.tif ${OUT_FOLDER}/globgm-wtd-20110131.nc "2011-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720229.tif ${OUT_FOLDER}/globgm-wtd-19720229.nc "1972-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140131.tif ${OUT_FOLDER}/globgm-wtd-20140131.nc "2014-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920630.tif ${OUT_FOLDER}/globgm-wtd-19920630.nc "1992-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20001130.tif ${OUT_FOLDER}/globgm-wtd-20001130.nc "2000-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700131.tif ${OUT_FOLDER}/globgm-wtd-19700131.nc "1970-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120531.tif ${OUT_FOLDER}/globgm-wtd-20120531.nc "2012-05-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900930.tif ${OUT_FOLDER}/globgm-wtd-19900930.nc "1990-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090831.tif ${OUT_FOLDER}/globgm-wtd-20090831.nc "2009-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970630.tif ${OUT_FOLDER}/globgm-wtd-19970630.nc "1997-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20061130.tif ${OUT_FOLDER}/globgm-wtd-20061130.nc "2006-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19700430.tif ${OUT_FOLDER}/globgm-wtd-19700430.nc "1970-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19951130.tif ${OUT_FOLDER}/globgm-wtd-19951130.nc "1995-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20011130.tif ${OUT_FOLDER}/globgm-wtd-20011130.nc "2001-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580430.tif ${OUT_FOLDER}/globgm-wtd-19580430.nc "1958-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620831.tif ${OUT_FOLDER}/globgm-wtd-19620831.nc "1962-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810430.tif ${OUT_FOLDER}/globgm-wtd-19810430.nc "1981-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830131.tif ${OUT_FOLDER}/globgm-wtd-19830131.nc "1983-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020531.tif ${OUT_FOLDER}/globgm-wtd-20020531.nc "2002-05-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880630.tif ${OUT_FOLDER}/globgm-wtd-19880630.nc "1988-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050930.tif ${OUT_FOLDER}/globgm-wtd-20050930.nc "2005-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19901130.tif ${OUT_FOLDER}/globgm-wtd-19901130.nc "1990-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20101130.tif ${OUT_FOLDER}/globgm-wtd-20101130.nc "2010-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820731.tif ${OUT_FOLDER}/globgm-wtd-19820731.nc "1982-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770831.tif ${OUT_FOLDER}/globgm-wtd-19770831.nc "1977-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19931231.tif ${OUT_FOLDER}/globgm-wtd-19931231.nc "1993-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19721231.tif ${OUT_FOLDER}/globgm-wtd-19721231.nc "1972-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940331.tif ${OUT_FOLDER}/globgm-wtd-19940331.nc "1994-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670630.tif ${OUT_FOLDER}/globgm-wtd-19670630.nc "1967-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090430.tif ${OUT_FOLDER}/globgm-wtd-20090430.nc "2009-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19851130.tif ${OUT_FOLDER}/globgm-wtd-19851130.nc "1985-11-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19781231.tif ${OUT_FOLDER}/globgm-wtd-19781231.nc "1978-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800430.tif ${OUT_FOLDER}/globgm-wtd-19800430.nc "1980-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19801231.tif ${OUT_FOLDER}/globgm-wtd-19801231.nc "1980-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100930.tif ${OUT_FOLDER}/globgm-wtd-20100930.nc "2010-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860731.tif ${OUT_FOLDER}/globgm-wtd-19860731.nc "1986-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000229.tif ${OUT_FOLDER}/globgm-wtd-20000229.nc "2000-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840630.tif ${OUT_FOLDER}/globgm-wtd-19840630.nc "1984-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19811231.tif ${OUT_FOLDER}/globgm-wtd-19811231.nc "1981-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010630.tif ${OUT_FOLDER}/globgm-wtd-20010630.nc "2001-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860831.tif ${OUT_FOLDER}/globgm-wtd-19860831.nc "1986-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790331.tif ${OUT_FOLDER}/globgm-wtd-19790331.nc "1979-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090630.tif ${OUT_FOLDER}/globgm-wtd-20090630.nc "2009-06-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120831.tif ${OUT_FOLDER}/globgm-wtd-20120831.nc "2012-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19931031.tif ${OUT_FOLDER}/globgm-wtd-19931031.nc "1993-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19800531.tif ${OUT_FOLDER}/globgm-wtd-19800531.nc "1980-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680731.tif ${OUT_FOLDER}/globgm-wtd-19680731.nc "1968-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970331.tif ${OUT_FOLDER}/globgm-wtd-19970331.nc "1997-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20031130.tif ${OUT_FOLDER}/globgm-wtd-20031130.nc "2003-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750731.tif ${OUT_FOLDER}/globgm-wtd-19750731.nc "1975-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930228.tif ${OUT_FOLDER}/globgm-wtd-19930228.nc "1993-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990930.tif ${OUT_FOLDER}/globgm-wtd-19990930.nc "1999-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19961031.tif ${OUT_FOLDER}/globgm-wtd-19961031.nc "1996-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100331.tif ${OUT_FOLDER}/globgm-wtd-20100331.nc "2010-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760930.tif ${OUT_FOLDER}/globgm-wtd-19760930.nc "1976-09-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19741130.tif ${OUT_FOLDER}/globgm-wtd-19741130.nc "1974-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19751031.tif ${OUT_FOLDER}/globgm-wtd-19751031.nc "1975-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000430.tif ${OUT_FOLDER}/globgm-wtd-20000430.nc "2000-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970131.tif ${OUT_FOLDER}/globgm-wtd-19970131.nc "1997-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060831.tif ${OUT_FOLDER}/globgm-wtd-20060831.nc "2006-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840731.tif ${OUT_FOLDER}/globgm-wtd-19840731.nc "1984-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20041231.tif ${OUT_FOLDER}/globgm-wtd-20041231.nc "2004-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19841031.tif ${OUT_FOLDER}/globgm-wtd-19841031.nc "1984-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950228.tif ${OUT_FOLDER}/globgm-wtd-19950228.nc "1995-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630831.tif ${OUT_FOLDER}/globgm-wtd-19630831.nc "1963-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020930.tif ${OUT_FOLDER}/globgm-wtd-20020930.nc "2002-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640630.tif ${OUT_FOLDER}/globgm-wtd-19640630.nc "1964-06-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640229.tif ${OUT_FOLDER}/globgm-wtd-19640229.nc "1964-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790630.tif ${OUT_FOLDER}/globgm-wtd-19790630.nc "1979-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750531.tif ${OUT_FOLDER}/globgm-wtd-19750531.nc "1975-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19881031.tif ${OUT_FOLDER}/globgm-wtd-19881031.nc "1988-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150131.tif ${OUT_FOLDER}/globgm-wtd-20150131.nc "2015-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19641130.tif ${OUT_FOLDER}/globgm-wtd-19641130.nc "1964-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19860531.tif ${OUT_FOLDER}/globgm-wtd-19860531.nc "1986-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040831.tif ${OUT_FOLDER}/globgm-wtd-20040831.nc "2004-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19761231.tif ${OUT_FOLDER}/globgm-wtd-19761231.nc "1976-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850630.tif ${OUT_FOLDER}/globgm-wtd-19850630.nc "1985-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19581130.tif ${OUT_FOLDER}/globgm-wtd-19581130.nc "1958-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620531.tif ${OUT_FOLDER}/globgm-wtd-19620531.nc "1962-05-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630731.tif ${OUT_FOLDER}/globgm-wtd-19630731.nc "1963-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910831.tif ${OUT_FOLDER}/globgm-wtd-19910831.nc "1991-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720430.tif ${OUT_FOLDER}/globgm-wtd-19720430.nc "1972-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920430.tif ${OUT_FOLDER}/globgm-wtd-19920430.nc "1992-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580930.tif ${OUT_FOLDER}/globgm-wtd-19580930.nc "1958-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810228.tif ${OUT_FOLDER}/globgm-wtd-19810228.nc "1981-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070630.tif ${OUT_FOLDER}/globgm-wtd-20070630.nc "2007-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670930.tif ${OUT_FOLDER}/globgm-wtd-19670930.nc "1967-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090731.tif ${OUT_FOLDER}/globgm-wtd-20090731.nc "2009-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780131.tif ${OUT_FOLDER}/globgm-wtd-19780131.nc "1978-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20031031.tif ${OUT_FOLDER}/globgm-wtd-20031031.nc "2003-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19761130.tif ${OUT_FOLDER}/globgm-wtd-19761130.nc "1976-11-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19780630.tif ${OUT_FOLDER}/globgm-wtd-19780630.nc "1978-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590331.tif ${OUT_FOLDER}/globgm-wtd-19590331.nc "1959-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19620430.tif ${OUT_FOLDER}/globgm-wtd-19620430.nc "1962-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000930.tif ${OUT_FOLDER}/globgm-wtd-20000930.nc "2000-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19861130.tif ${OUT_FOLDER}/globgm-wtd-19861130.nc "1986-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730430.tif ${OUT_FOLDER}/globgm-wtd-19730430.nc "1973-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150228.tif ${OUT_FOLDER}/globgm-wtd-20150228.nc "2015-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610228.tif ${OUT_FOLDER}/globgm-wtd-19610228.nc "1961-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830531.tif ${OUT_FOLDER}/globgm-wtd-19830531.nc "1983-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19871231.tif ${OUT_FOLDER}/globgm-wtd-19871231.nc "1987-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000331.tif ${OUT_FOLDER}/globgm-wtd-20000331.nc "2000-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110430.tif ${OUT_FOLDER}/globgm-wtd-20110430.nc "2011-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720331.tif ${OUT_FOLDER}/globgm-wtd-19720331.nc "1972-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19991031.tif ${OUT_FOLDER}/globgm-wtd-19991031.nc "1999-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010228.tif ${OUT_FOLDER}/globgm-wtd-20010228.nc "2001-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890228.tif ${OUT_FOLDER}/globgm-wtd-19890228.nc "1989-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150430.tif ${OUT_FOLDER}/globgm-wtd-20150430.nc "2015-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120331.tif ${OUT_FOLDER}/globgm-wtd-20120331.nc "2012-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580630.tif ${OUT_FOLDER}/globgm-wtd-19580630.nc "1958-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110531.tif ${OUT_FOLDER}/globgm-wtd-20110531.nc "2011-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020228.tif ${OUT_FOLDER}/globgm-wtd-20020228.nc "2002-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940228.tif ${OUT_FOLDER}/globgm-wtd-19940228.nc "1994-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730831.tif ${OUT_FOLDER}/globgm-wtd-19730831.nc "1973-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900731.tif ${OUT_FOLDER}/globgm-wtd-19900731.nc "1990-07-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20051231.tif ${OUT_FOLDER}/globgm-wtd-20051231.nc "2005-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060731.tif ${OUT_FOLDER}/globgm-wtd-20060731.nc "2006-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100131.tif ${OUT_FOLDER}/globgm-wtd-20100131.nc "2010-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690831.tif ${OUT_FOLDER}/globgm-wtd-19690831.nc "1969-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030531.tif ${OUT_FOLDER}/globgm-wtd-20030531.nc "2003-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19871031.tif ${OUT_FOLDER}/globgm-wtd-19871031.nc "1987-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19881130.tif ${OUT_FOLDER}/globgm-wtd-19881130.nc "1988-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950331.tif ${OUT_FOLDER}/globgm-wtd-19950331.nc "1995-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730930.tif ${OUT_FOLDER}/globgm-wtd-19730930.nc "1973-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980228.tif ${OUT_FOLDER}/globgm-wtd-19980228.nc "1998-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19631231.tif ${OUT_FOLDER}/globgm-wtd-19631231.nc "1963-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19830630.tif ${OUT_FOLDER}/globgm-wtd-19830630.nc "1983-06-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19841231.tif ${OUT_FOLDER}/globgm-wtd-19841231.nc "1984-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19821031.tif ${OUT_FOLDER}/globgm-wtd-19821031.nc "1982-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19991130.tif ${OUT_FOLDER}/globgm-wtd-19991130.nc "1999-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19911130.tif ${OUT_FOLDER}/globgm-wtd-19911130.nc "1991-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19981031.tif ${OUT_FOLDER}/globgm-wtd-19981031.nc "1998-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850731.tif ${OUT_FOLDER}/globgm-wtd-19850731.nc "1985-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19901031.tif ${OUT_FOLDER}/globgm-wtd-19901031.nc "1990-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19601130.tif ${OUT_FOLDER}/globgm-wtd-19601130.nc "1960-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980731.tif ${OUT_FOLDER}/globgm-wtd-19980731.nc "1998-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930731.tif ${OUT_FOLDER}/globgm-wtd-19930731.nc "1993-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810630.tif ${OUT_FOLDER}/globgm-wtd-19810630.nc "1981-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19790131.tif ${OUT_FOLDER}/globgm-wtd-19790131.nc "1979-01-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20141130.tif ${OUT_FOLDER}/globgm-wtd-20141130.nc "2014-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20000831.tif ${OUT_FOLDER}/globgm-wtd-20000831.nc "2000-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600229.tif ${OUT_FOLDER}/globgm-wtd-19600229.nc "1960-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820131.tif ${OUT_FOLDER}/globgm-wtd-19820131.nc "1982-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770630.tif ${OUT_FOLDER}/globgm-wtd-19770630.nc "1977-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20101031.tif ${OUT_FOLDER}/globgm-wtd-20101031.nc "2010-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740331.tif ${OUT_FOLDER}/globgm-wtd-19740331.nc "1974-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19640930.tif ${OUT_FOLDER}/globgm-wtd-19640930.nc "1964-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19730630.tif ${OUT_FOLDER}/globgm-wtd-19730630.nc "1973-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680630.tif ${OUT_FOLDER}/globgm-wtd-19680630.nc "1968-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040630.tif ${OUT_FOLDER}/globgm-wtd-20040630.nc "2004-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19630430.tif ${OUT_FOLDER}/globgm-wtd-19630430.nc "1963-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020331.tif ${OUT_FOLDER}/globgm-wtd-20020331.nc "2002-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690331.tif ${OUT_FOLDER}/globgm-wtd-19690331.nc "1969-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890930.tif ${OUT_FOLDER}/globgm-wtd-19890930.nc "1989-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19820930.tif ${OUT_FOLDER}/globgm-wtd-19820930.nc "1982-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080930.tif ${OUT_FOLDER}/globgm-wtd-20080930.nc "2008-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19861031.tif ${OUT_FOLDER}/globgm-wtd-19861031.nc "1986-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140731.tif ${OUT_FOLDER}/globgm-wtd-20140731.nc "2014-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19611031.tif ${OUT_FOLDER}/globgm-wtd-19611031.nc "1961-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20110930.tif ${OUT_FOLDER}/globgm-wtd-20110930.nc "2011-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19781130.tif ${OUT_FOLDER}/globgm-wtd-19781130.nc "1978-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080831.tif ${OUT_FOLDER}/globgm-wtd-20080831.nc "2008-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19910430.tif ${OUT_FOLDER}/globgm-wtd-19910430.nc "1991-04-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19631031.tif ${OUT_FOLDER}/globgm-wtd-19631031.nc "1963-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20081231.tif ${OUT_FOLDER}/globgm-wtd-20081231.nc "2008-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20120229.tif ${OUT_FOLDER}/globgm-wtd-20120229.nc "2012-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040930.tif ${OUT_FOLDER}/globgm-wtd-20040930.nc "2004-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20101231.tif ${OUT_FOLDER}/globgm-wtd-20101231.nc "2010-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930630.tif ${OUT_FOLDER}/globgm-wtd-19930630.nc "1993-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19680229.tif ${OUT_FOLDER}/globgm-wtd-19680229.nc "1968-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19801031.tif ${OUT_FOLDER}/globgm-wtd-19801031.nc "1980-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950430.tif ${OUT_FOLDER}/globgm-wtd-19950430.nc "1995-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990430.tif ${OUT_FOLDER}/globgm-wtd-19990430.nc "1999-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040331.tif ${OUT_FOLDER}/globgm-wtd-20040331.nc "2004-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20100731.tif ${OUT_FOLDER}/globgm-wtd-20100731.nc "2010-07-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19710531.tif ${OUT_FOLDER}/globgm-wtd-19710531.nc "1971-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670228.tif ${OUT_FOLDER}/globgm-wtd-19670228.nc "1967-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090930.tif ${OUT_FOLDER}/globgm-wtd-20090930.nc "2009-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880229.tif ${OUT_FOLDER}/globgm-wtd-19880229.nc "1988-02-29" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610930.tif ${OUT_FOLDER}/globgm-wtd-19610930.nc "1961-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19821231.tif ${OUT_FOLDER}/globgm-wtd-19821231.nc "1982-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19970430.tif ${OUT_FOLDER}/globgm-wtd-19970430.nc "1997-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19601031.tif ${OUT_FOLDER}/globgm-wtd-19601031.nc "1960-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020131.tif ${OUT_FOLDER}/globgm-wtd-20020131.nc "2002-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20091031.tif ${OUT_FOLDER}/globgm-wtd-20091031.nc "2009-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050831.tif ${OUT_FOLDER}/globgm-wtd-20050831.nc "2005-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19890831.tif ${OUT_FOLDER}/globgm-wtd-19890831.nc "1989-08-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19610131.tif ${OUT_FOLDER}/globgm-wtd-19610131.nc "1961-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19930331.tif ${OUT_FOLDER}/globgm-wtd-19930331.nc "1993-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19900131.tif ${OUT_FOLDER}/globgm-wtd-19900131.nc "1990-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19870228.tif ${OUT_FOLDER}/globgm-wtd-19870228.nc "1987-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090531.tif ${OUT_FOLDER}/globgm-wtd-20090531.nc "2009-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19981231.tif ${OUT_FOLDER}/globgm-wtd-19981231.nc "1998-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20041031.tif ${OUT_FOLDER}/globgm-wtd-20041031.nc "2004-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19600331.tif ${OUT_FOLDER}/globgm-wtd-19600331.nc "1960-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19750131.tif ${OUT_FOLDER}/globgm-wtd-19750131.nc "1975-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130131.tif ${OUT_FOLDER}/globgm-wtd-20130131.nc "2013-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960630.tif ${OUT_FOLDER}/globgm-wtd-19960630.nc "1996-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770331.tif ${OUT_FOLDER}/globgm-wtd-19770331.nc "1977-03-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880131.tif ${OUT_FOLDER}/globgm-wtd-19880131.nc "1988-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19670531.tif ${OUT_FOLDER}/globgm-wtd-19670531.nc "1967-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070131.tif ${OUT_FOLDER}/globgm-wtd-20070131.nc "2007-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840531.tif ${OUT_FOLDER}/globgm-wtd-19840531.nc "1984-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20030630.tif ${OUT_FOLDER}/globgm-wtd-20030630.nc "2003-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20090131.tif ${OUT_FOLDER}/globgm-wtd-20090131.nc "2009-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19980131.tif ${OUT_FOLDER}/globgm-wtd-19980131.nc "1998-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20141031.tif ${OUT_FOLDER}/globgm-wtd-20141031.nc "2014-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850930.tif ${OUT_FOLDER}/globgm-wtd-19850930.nc "1985-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150731.tif ${OUT_FOLDER}/globgm-wtd-20150731.nc "2015-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19920930.tif ${OUT_FOLDER}/globgm-wtd-19920930.nc "1992-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19791031.tif ${OUT_FOLDER}/globgm-wtd-19791031.nc "1979-10-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880531.tif ${OUT_FOLDER}/globgm-wtd-19880531.nc "1988-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760831.tif ${OUT_FOLDER}/globgm-wtd-19760831.nc "1976-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19880930.tif ${OUT_FOLDER}/globgm-wtd-19880930.nc "1988-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070531.tif ${OUT_FOLDER}/globgm-wtd-20070531.nc "2007-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19971031.tif ${OUT_FOLDER}/globgm-wtd-19971031.nc "1997-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050531.tif ${OUT_FOLDER}/globgm-wtd-20050531.nc "2005-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650731.tif ${OUT_FOLDER}/globgm-wtd-19650731.nc "1965-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19740731.tif ${OUT_FOLDER}/globgm-wtd-19740731.nc "1974-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660531.tif ${OUT_FOLDER}/globgm-wtd-19660531.nc "1966-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140930.tif ${OUT_FOLDER}/globgm-wtd-20140930.nc "2014-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20010531.tif ${OUT_FOLDER}/globgm-wtd-20010531.nc "2001-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20140630.tif ${OUT_FOLDER}/globgm-wtd-20140630.nc "2014-06-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850531.tif ${OUT_FOLDER}/globgm-wtd-19850531.nc "1985-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19671130.tif ${OUT_FOLDER}/globgm-wtd-19671130.nc "1967-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660630.tif ${OUT_FOLDER}/globgm-wtd-19660630.nc "1966-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19691031.tif ${OUT_FOLDER}/globgm-wtd-19691031.nc "1969-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19720531.tif ${OUT_FOLDER}/globgm-wtd-19720531.nc "1972-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19770228.tif ${OUT_FOLDER}/globgm-wtd-19770228.nc "1977-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20130831.tif ${OUT_FOLDER}/globgm-wtd-20130831.nc "2013-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960531.tif ${OUT_FOLDER}/globgm-wtd-19960531.nc "1996-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20071231.tif ${OUT_FOLDER}/globgm-wtd-20071231.nc "2007-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19810531.tif ${OUT_FOLDER}/globgm-wtd-19810531.nc "1981-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150831.tif ${OUT_FOLDER}/globgm-wtd-20150831.nc "2015-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990331.tif ${OUT_FOLDER}/globgm-wtd-19990331.nc "1999-03-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650430.tif ${OUT_FOLDER}/globgm-wtd-19650430.nc "1965-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850331.tif ${OUT_FOLDER}/globgm-wtd-19850331.nc "1985-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19811130.tif ${OUT_FOLDER}/globgm-wtd-19811130.nc "1981-11-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19641031.tif ${OUT_FOLDER}/globgm-wtd-19641031.nc "1964-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19851231.tif ${OUT_FOLDER}/globgm-wtd-19851231.nc "1985-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19751231.tif ${OUT_FOLDER}/globgm-wtd-19751231.nc "1975-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19590131.tif ${OUT_FOLDER}/globgm-wtd-19590131.nc "1959-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20040531.tif ${OUT_FOLDER}/globgm-wtd-20040531.nc "2004-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020831.tif ${OUT_FOLDER}/globgm-wtd-20020831.nc "2002-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20121231.tif ${OUT_FOLDER}/globgm-wtd-20121231.nc "2012-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20150930.tif ${OUT_FOLDER}/globgm-wtd-20150930.nc "2015-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19650630.tif ${OUT_FOLDER}/globgm-wtd-19650630.nc "1965-06-30" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19690930.tif ${OUT_FOLDER}/globgm-wtd-19690930.nc "1969-09-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070331.tif ${OUT_FOLDER}/globgm-wtd-20070331.nc "2007-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19831031.tif ${OUT_FOLDER}/globgm-wtd-19831031.nc "1983-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20070228.tif ${OUT_FOLDER}/globgm-wtd-20070228.nc "2007-02-28" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19960131.tif ${OUT_FOLDER}/globgm-wtd-19960131.nc "1996-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19921031.tif ${OUT_FOLDER}/globgm-wtd-19921031.nc "1992-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760331.tif ${OUT_FOLDER}/globgm-wtd-19760331.nc "1976-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19940531.tif ${OUT_FOLDER}/globgm-wtd-19940531.nc "1994-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990630.tif ${OUT_FOLDER}/globgm-wtd-19990630.nc "1999-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20060331.tif ${OUT_FOLDER}/globgm-wtd-20060331.nc "2006-03-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20080131.tif ${OUT_FOLDER}/globgm-wtd-20080131.nc "2008-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19651031.tif ${OUT_FOLDER}/globgm-wtd-19651031.nc "1965-10-31" &

wait

bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19760430.tif ${OUT_FOLDER}/globgm-wtd-19760430.nc "1976-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20020630.tif ${OUT_FOLDER}/globgm-wtd-20020630.nc "2002-06-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19840430.tif ${OUT_FOLDER}/globgm-wtd-19840430.nc "1984-04-30" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19580731.tif ${OUT_FOLDER}/globgm-wtd-19580731.nc "1958-07-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19850131.tif ${OUT_FOLDER}/globgm-wtd-19850131.nc "1985-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19990831.tif ${OUT_FOLDER}/globgm-wtd-19990831.nc "1999-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050131.tif ${OUT_FOLDER}/globgm-wtd-20050131.nc "2005-01-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19950531.tif ${OUT_FOLDER}/globgm-wtd-19950531.nc "1995-05-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20151031.tif ${OUT_FOLDER}/globgm-wtd-20151031.nc "2015-10-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19741231.tif ${OUT_FOLDER}/globgm-wtd-19741231.nc "1974-12-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-19660831.tif ${OUT_FOLDER}/globgm-wtd-19660831.nc "1966-08-31" &
bash convert_asc_to_netcdf.sh ${INP_FOLDER}/globgm-wtd-20050731.tif ${OUT_FOLDER}/globgm-wtd-20050731.nc "2005-07-31" &

wait

set +x

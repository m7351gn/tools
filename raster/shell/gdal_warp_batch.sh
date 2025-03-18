set -x

# abandon any existing PYTHONPATH (recommended, if you want to use miniconda or anaconda)
unset PYTHONPATH

filenamein="GDP.nc"
filenameout="GDP.nc"

folderin="30arcsec_nc/"
folderout="30arcsec_nc_wgs84/"


for i in $(seq 1992 2019);
do
   
    fullin="${folderin}$i${filenamein}"
    fullout="${folderout}$i${filenameout}"	
 
    gdalwarp $fullin $fullout -t_srs "+proj=longlat +ellps=WGS84"


done

set +x





gdalwarp 1992GDP.nc 1992GDP_wgs84.nc -t_srs "+proj=longlat +ellps=WGS84"
set -x

# abandon any existing PYTHONPATH (recommended, if you want to use miniconda or anaconda)
unset PYTHONPATH

filenamein="GDP.tif"
filenameout="GDP.nc"

folderin="30arcsec_tif/"
folderout="30arcsec_nc/"


for i in $(seq 1992 2019);
do
   
    fullin="${folderin}$i${filenamein}"
    fullout="${folderout}$i${filenameout}"	
 
    gdal_translate $fullin $fullout

    


done

set +x

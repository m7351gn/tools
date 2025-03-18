set -x

# abandon any existing PYTHONPATH (recommended, if you want to use miniconda or anaconda)
unset PYTHONPATH



filenamein="GDP.nc"
filenameout="GDP.nc"


folderin="30arcsec_nc_wgs84/"
folderout="5arcmin_nc/"


for i in $(seq 1993 2019);
do
   
    echo $i
   
    fullin="${folderin}$i${filenamein}"
    fullout="${folderout}$i${filenameout}"	
 
    cdo remapsum,griddes_global_5arcmin.txt ${fullin} ${fullout}

    


done
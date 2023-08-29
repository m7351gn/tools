
set -x

#bottom heads
INP_FOLDER="/scratch/6574882/GENEWS/GENEWS/input/1_water_abstraction/globgm_transient_gw_heads_top/"
OUTPUT_FOLDER="/scratch/6574882/GENEWS/GENEWS/input/1_water_abstraction/globgm_transient_gw_heads_30arcsec_merged/"

mkdir -p ${OUTPUT_FOLDER}
cd ${OUTPUT_FOLDER}

#~ # griddes example
#~ (pcrglobwb_python3) sutan101@gpu038.cluster:/scratch/depfg/sutan101/data/pcrglobwb_input_arise/develop/global_05min/routing/cell_area$ cdo griddes cdo_gridarea_clone_global_05min_correct_lats.nc
#~ #
#~ # gridID 1
#~ #
#~ gridtype  = lonlat
#~ gridsize  = 9331200
#~ xsize     = 4320
#~ ysize     = 2160
#~ xname     = lon
#~ xlongname = "longitude"
#~ xunits    = "degrees_east"
#~ yname     = lat
#~ ylongname = "latitude"
#~ yunits    = "degrees_north"
#~ xfirst    = -179.958333333333
#~ xinc      = 0.0833333333333333
#~ yfirst    = 89.9583333333333
#~ yinc      = -0.0833333333333333
#~ cdo    griddes: Processed 1 variable [0.06s 15MB].

# mergetime, interpolate and setgrid and etc ...


# - global transient groundwater heads
cdo -L -f nc4 -setattribute,description="Transient groundwater heads - Top" \
              -setattribute,references="Verkaik et al. (2022) - Geosci. Model Dev. Discuss." \
              -setattribute,source=${INP_FOLDER} \
              -setname,"groundwater_heads_top" -setunit,1 -setgrid,griddes_global_30arcsec.txt -setmisstoc,0.0 -mergetime \
              '/scratch/6574882/GENEWS/GENEWS/input/1_water_abstraction/globgm_transient_gw_heads_top/*.nc' transient_Gw_top_30arcsec_monthly_1958-2015.nc  
              #-inttime,1958-01-31,00:00:00,1month -mulc,0.01

# fixing standard_name and long_name
#~ cdo mergetime '/scratch/6574882/GENEWS/GENEWS/input/1_water_abstraction/globgm_transient_gw_heads/*.nc' '/scratch/6574882/GENEWS/GENEWS/input/1_water_abstractiontransient_Gw_bot_30arcsec_monthly_1958-2015.nc'
ncatted -O -a standard_name,"groundwater_heads_top",m,c,"groundwater_heads_top" transient_Gw_top_30arcsec_monthly_1958-2015.nc 
ncatted -O -a     long_name,"groundwater_heads_top",m,c,"groundwater_heads_top" transient_Gw_top_30arcsec_monthly_1958-2015.nc 

# check avg and sd of transient heads for each pixel
#~ cdo #function??  timmax_check_total.nc
#~ cdo timmin check_total.nc timmin_check_total.nc


set +x


#upscale to 5arcmin

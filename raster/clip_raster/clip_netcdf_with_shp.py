#### script to clip a netcdf using a shapefile ####

import xarray as xr
import geopandas as gpd
import regionmask
from get_coordinates_corners import *


#### files and variable names

## clipping shapefile
inputPathShp = 'california-wgs84/'
filename_shp = 'california-wgs84.shp'

## input / output paths netcdf 
inputPathNetcdf = '5 arcmin - remap/'
outputPathNetcdf = '5 arcmin - regional/'

## region name for output file naming
region_name = 'California'

## filenames
filename_netcdf = 'compounds_W5E5-GSIM-GRDC_5arcmin_monthly_1990-2019'
filename_netcdf_input = filename_netcdf + '.nc'
filename_netcdf_output = filename_netcdf + '_' + region_name + '.nc'

## variable name contained in netcdf file
netcdf_variable_name = 'compounds'

#### load netcdf and shapefile
gdf_country = gpd.read_file(inputPathShp + filename_shp)


with xr.open_dataset(inputPathNetcdf + filename_netcdf_input) as file_nc:
    netcdf_global = file_nc

#print(gdf_country)
print(netcdf_global) 

#### get square boundary to clip
shp_bounds = get_coordinates_corners(gdf_country)
print(shp_bounds)


#### slice netcdf
sliced_nc = netcdf_global[netcdf_variable_name].sel(

            lon=slice(shp_bounds["lon"][0], shp_bounds["lon"][1]),
            lat=slice(shp_bounds["lat"][0], shp_bounds["lat"][1]))
            
            #lon=slice(shp_bounds["lon"][1], shp_bounds["lon"][0]),
            #lat=slice(shp_bounds["lat"][1], shp_bounds["lat"][0]))
            
            
#### mask sliced netcdf and clip
clipping_mask = regionmask.mask_3D_geopandas(gdf_country,
                                            sliced_nc.lon,
                                            sliced_nc.lat)


sliced_nc_masked = sliced_nc.where(clipping_mask)            

#print(sliced_nc_masked)
#exit()

#### save clipped netcdf to disk
sliced_nc_masked.to_netcdf(outputPathNetcdf + filename_netcdf_output)

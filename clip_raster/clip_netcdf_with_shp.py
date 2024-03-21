#### script to clip a netcdf using a shapefile ####

import xarray as xr
import geopandas as gpd
import regionmask
from get_coordinates_corners import *

#### paths
# ~ inputPathGGMInput = '/eejit/depfg/sutan101/data/globgm/downloaded_from_yoda_on_2023-03-13/research-globgm/input/version_1.0'
inputPathGGMOutput = '/eejit/depfg/sutan101/data/globgm_groundwater_netcdf_files/v20230512/upscaled_to_5_min/'


#### read files 
#shp
# ~ gdf_country = gpd.read_file('Netherlands_shp/Netherlands.shp')
gdf_country = gpd.read_file('CONUS_mask/CONUS_mask.shp')
# ~ gdf_nl = gpd.read_file('Netherlands_shp/Netherlands.shp')
# ~ gdf_conus = gpd.read_file('CONUS_mask/CONUS_mask.shp')

# ~ print(gdf_nl)
# ~ print(gdf_conus)

#nc
with xr.open_dataset(inputPathNC + 'groundwater_depth_top_30sec_monthly_1958-2015_upscaled_to_5min.nc', decode_coords = 'all') as file_nc:
# ~ with xr.open_dataset(inputPathNC + 'groundwater_depth_bottom_30sec_monthly_1958-2015_upscaled_to_5min.nc', decode_coords = 'all') as file_nc:
    
    glob_gm_5arcmin = file_nc
    
# ~ print(glob_gm_5arcmin) 
# ~ exit()

#### get square boundary to clip
shp_bounds = get_coordinates_corners(gdf_country)

#### slice netcdf
sliced_nc = glob_gm_5arcmin["groundwater_depth"].sel(
            lon=slice(shp_bounds["lon"][0], shp_bounds["lon"][1]),
            lat=slice(shp_bounds["lat"][0], shp_bounds["lat"][1]))

# ~ print(sliced_nc)

#### mask sliced netcdf
gridded_hydrowaste_masked = regionmask.mask_3D_geopandas(gdf_country,
                                            sliced_nc.lon,
                                            sliced_nc.lat)


sliced_nc_masked = sliced_nc.where(gridded_hydrowaste_masked)

# ~ print(sliced_nc_masked)

#### save clipped netcdf to disk
sliced_nc_masked.to_netcdf('globgm_top_5arcmin_monthly_1950_2015_conus.nc')
# ~ sliced_nc_masked.to_netcdf('globgm_bottom_5arcmin_monthly_1950_2015_conus.nc')

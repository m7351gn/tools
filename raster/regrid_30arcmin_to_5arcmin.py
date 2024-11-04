#written by Gabriel Cardenas (Utrecht University)

import xarray as xr 
import numpy as np


ds_30arcmin = xr.open_dataset('file_in.nc')

print(ds_30arcmin)

dl = 5/60
lats = np.arange(-90+dl/2, 90, dl)
lons = np.arange(-180+dl/2, 180, dl)
ds_5arcmin = ds_30arcmin.interp(lat=lats, lon=lons, method='nearest')

print(ds_5arcmin)

ds_5arcmin.to_netcdf('file_out.nc')
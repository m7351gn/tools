library(terra)

big.raster <- rast('nc.nc')
plot(big.raster)

shapefile.to.clip <- vect('shp.shp')
plot(shapefile.to.clip)

clipped.rast <- crop(big.raster, shapefile.to.clip, mask = T)
plot(clipped.rast)

writeRaster(clipped.rast, 'clipped.tif', overwrite = T)

writeCDF(clipped.rast, 'clipped.nc', 
         varname = 'varname', 
         longname="Long name var name", 
         unit="-", 
         split=FALSE, overwrite = T)



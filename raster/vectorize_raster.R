library(terra)

file.raster <- rast('raster.tif')
plot(file.raster)

file.vector <- as.polygons(file.raster)
plot(file.vector)

writeVector(file.vector, 'vectorized.shp')

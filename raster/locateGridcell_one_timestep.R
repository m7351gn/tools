#### script to assign point features to gridcell####

library(dplyr)
library(vroom)
library(FNN)
library(terra)

replaceMessage <- function(x, width = 80)
{
  message("\r", rep(" ", times = width - length(x)), "\r", appendLF = F)
  message(x, appendLF = F)
}

#### part 1 :::: attributes each plant to the nearest gridcell (centroid) ####
#load point data
data <- read.csv('hydrowaste_updated_china.csv') 

#load text file of gridcells with cell ID and coordinates
gridcells <- vroom(file = 'countries_raster_5arcmin.csv',
                   col_names = TRUE, show_col_types = FALSE)

#get non-NA cell IDs
not.na.gridcells <- gridcells[!is.na(gridcells$country.renamed),]

#### assign cell IDs to plants ####
#loop over countries to constrain assignment to same country
# data.countries <- unique(data$country.renamed)
data.countries <- unique(data$Country)

#empty list for appending
data.with.cellids.list <- list()

for(country in 1:length(data.countries)){
  
  replaceMessage(paste0('Country ', country, '/', length(data.countries)))
  
  #get country plants
  country.plants <- data %>% 
    # filter(country.renamed==data.countries[country])
    filter(Country==data.countries[country])
  
  #get country pixels
  gridcells.country <- not.na.gridcells %>% 
    # filter(Country == data.countries[country])
    filter(country.renamed == data.countries[country])
  
  #make dataframe of plant coordinates
  coord.plants.country <- as.data.frame(cbind(
    country.plants$LON_WWTP, country.plants$LAT_WWTP))
  
  #make dataframe of gridcells coordinates
  coord.cells.country <- as.data.frame(cbind(
    gridcells.country$cell_lon, gridcells.country$cell_lat))
  
  #find nearest cell to plants
  matches <- knnx.index(coord.cells.country, coord.plants.country, k = 1)
  
  #find nearest neighbour cell ID
  nearest.cell.id <- as.data.frame(
    gridcells.country$cell_ID[matches[,1]])
  colnames(nearest.cell.id) <- 'pcrglobwb_cellID'
  
  #bind to country plants
  country.plants.cellid <- cbind(country.plants, nearest.cell.id)
  
  #append to global list 
  data.with.cellids.list[[country]] <- country.plants.cellid
  
}

#explode list
data.with.cellids <- do.call(rbind, data.with.cellids.list)

#save intermediate output
write.csv(data.with.cellids, 'hydrowaste_updated_china_gridcells.csv', row.names = F)


#### part 2 :::: write selected column to raster (5 arc-min) ####
# accumulate variable per pixel
# when two points are assigned to the same gridcell
data.grid.cell <- data.with.cellids %>% 
  group_by(pcrglobwb_cellID) %>% 
  summarise(WASTE_DIS_DAY = sum(WASTE_DIS)) %>% #choose here the variable
  mutate(WASTE_DIS_YEAR = WASTE_DIS_DAY*365) %>% 
  mutate(WASTE_DIS_YEAR_MILLION_M3 = WASTE_DIS_YEAR / 10^6)

#remove cells with 0 m3 of treated wastewater discharge for better clarity
# data.grid.cell[data.grid.cell==0] <- NA

#match to closest pcrglobwb cell 
grid.values <- data.grid.cell$WASTE_DIS_YEAR_MILLION_M3[
  match(gridcells$cell_ID,data.grid.cell$pcrglobwb_cellID)] 

#set grid properties (here 5arcmin)
global.grid <- rast(nrows = 2160, ncols = 4320)

#give value to grid
values(global.grid) <- grid.values

#save as .tif and .nc
outputPath <- ''
writeRaster(global.grid, paste0(outputPath, 'volumes_2015_5arcmin.tif'), overwrite = T)
writeCDF(global.grid, paste0(outputPath, 'volumes_2015_5arcmin.nc'), 
         varname = 'WWt', longname="Treated wastewater volume", unit="Mm3 y-1", 
         split=FALSE, overwrite = T)


#netcdf to be remapped and compressed
#remap
# cdo setgrid,goodcoordinates.nc HydroWASTE_5arc.nc HydroWASTE_5arc_remap.nc (for remap)
#time dimension
# cdo -L setreftime,2015-01-01,00:00:00,days -settaxis,2015-01-01,00:00:00,1year HydroWASTE_5arc_remap.nc HydroWASTE_5arc_remap2.nc
#compress 
# nccopy -k4 -d5 -s HydroWASTE_5arc_remap2.nc HydroWASTE_5arc.nc 

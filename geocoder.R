#-----------script to assign coordinates based on place name-----------#

library(openxlsx)
library(tidyverse)
library(tidygeocoder)

#### load file and choose output file name ####
file.name <- 'GWI_water_treatment_plants_raw.xlsx'
df <- read.xlsx(file.name)
# df <- read.csv(file.name)
colnames(df)

outputName <- 'GWI_water_treatment_plants_geocoded.csv'

#### geocode places using 'osm' method first #### 
# most precise but may not find some places
file.geocode.osm <- as.data.frame(df) %>%

  tidygeocoder::geocode(

    address = Place.Name, #use column with information about name of the place
    method = 'osm'

  )

#### get rows that were not assigned a coordinate ####
file.osm.success <- file.geocode.osm %>% filter(!is.na(lat))
file.osm.failed <- file.geocode.osm %>% filter(is.na(lat))

#checksum
# nrow(file.osm.success) + nrow(file.osm.failed) == nrow(df)

#### geocode places using 'arcgis' method second #### 
# less precise but gets more places 
file.geocode.arcgis <- as.data.frame(file.osm.failed %>% 
                                       select(-lat, -long)) %>%
  
  tidygeocoder::geocode(
    
    address = Place.Name, #use column with information about name of the place
    method = 'arcgis'
    
  )

#### check places that are still missing lat,lon ####
file.arcgis.success <- file.geocode.arcgis %>% filter(!is.na(lat))
file.arcgis.failed <- file.geocode.arcgis %>% filter(is.na(lat))

#number of places that still do not have a lat,lon after arcgis geocoding
nrow(file.arcgis.failed)

# if low number can do manually, otherwise there are other tidygeocoder methods
# https://rdrr.io/cran/tidygeocoder/man/geo.html

#### put frames back together and save ####
df.geocoded <- rbind(file.osm.success, file.arcgis.success, file.arcgis.failed)
write.csv(df.geocoded, outputName, row.names=F)

library(vroom)

file.name <- 'volumes_2015_5arcmin'

#get pcraster map2col file
inputFile_PCR <- read.table(file = paste0(file.name, '.txt'), 
                            header = FALSE, stringsAsFactors = FALSE) 

#create cell id array
cell_ids <- seq(1,nrow(inputFile_PCR))

#append to beginning of table
inputFile_PCR_cell_ID <- cbind(cell_ids, inputFile_PCR)

#rename columns
colnames(inputFile_PCR_cell_ID) <- c('cell_ID', 'lon','lat','variable')

#save
vroom_write(inputFile_PCR_cell_ID, paste0(file.name, '.csv'), ",")
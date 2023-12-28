#get pcraster map2col file
inputFile_PCR <- read.table(file = 'map2col.txt', 
                            header = FALSE, stringsAsFactors = FALSE) 

#create cell id array
cell_ids <- seq(1,nrow(inputFile_PCR))

#append to beginning of table
inputFile_PCR_cell_ID <- cbind(cell_ids, inputFile_PCR)

#rename columns
colnames(inputFile_PCR_cell_ID) <- c('cell_ID', 'lon','lat','variable')

#save
write.csv(inputFile_PCR_cell_ID, 'map2col.csv', row.names = F)

library(openxlsx)

file.name <- 'data'

data <- read.xlsx(paste0(file.name, '.xlsx'))
write.csv(data, paste0(file.name, '.csv', row.names = F))
library(openxlsx)
data <- read.xlsx('data.xlsx') 
write.csv(data, 'data.csv', row.names = F)
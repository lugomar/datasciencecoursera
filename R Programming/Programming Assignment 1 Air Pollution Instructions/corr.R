corr <- function(directory, threshold = 0) {
  result <- numeric() 
  allFiles <- list.files(path = directory, full.names = TRUE)
  for (file in allFiles) { 
    datos <- read.csv(file,header=TRUE)
    datos <- datos[complete.cases(datos),]

    if(nrow(datos)  > threshold) {
        correlacion_actual <- cor(datos[['sulfate']], datos[['nitrate']])
        result <- c(result, correlacion_actual)
    }
  }
  result
}
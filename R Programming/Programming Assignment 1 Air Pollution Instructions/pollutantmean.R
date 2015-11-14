pollutantmean <- function(directory, pollutant, id = 1:332){
  datos <- data.frame()
  archivos <- list.files(path = directory, full.names = TRUE)
  for (i in id) {
    datos <- rbind(datos, read.csv(archivos[i]))
  }
  if (pollutant=='nitrate' ||  pollutant=='sulfate') {
    mean(datos[,pollutant], na.rm = TRUE)
  }
}
complete <- function(directory, id = 1:332) {
datos <- data.frame()
nobs <- data.frame();
resultado <- data.frame()
allFiles <- list.files(path = directory, full.names = TRUE)
for (indice in id) { 
  datos <- (read.csv(allFiles[indice],header=TRUE))
  nobs <- nrow(datos[complete.cases(datos),]) 
  resultado <- rbind(resultado,  c(indice,nobs))
}
colnames(resultado) <- c('id', 'nobs') 
resultado
}
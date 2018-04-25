setwd("C:/Users/marip_000/Desktop/specdata")
directorio <- "C:/Users/marip_000/Desktop/specdata"

completos <- function(directorio,id=1:332){
    vec1 <- vector("numeric")
    
    for (i in id) {
        if(i<10){
            i = paste("00",i,sep="")
        } else if(i>=10 && i<100){
            i = paste("0",i,sep="")
        } else{
            i = paste(i,sep="")
        }
        
        leer <- read.csv(paste(i,".csv",sep=""),header = TRUE)
        datos <- complete.cases(leer)
        estossi <- leer[datos,2:3]
        nume <- nrow(estossi)
        vec1 <- c(vec1,nume)
    }
    tabla <- data.frame(ID = id,NOBS = vec1)
    print(tabla)
}




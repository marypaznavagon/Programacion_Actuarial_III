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
    dafra <- data.frame(ID = id,NOBS = vec1)
    print(dafra)
}

ler <- read.csv("001.csv")
dat <- complete.cases(ler)
real <- ler[dat, 2:3]
relacion <- cor(real[,1],real[,2])
relacion

completos(directorio,1:10)

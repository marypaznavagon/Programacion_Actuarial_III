setwd("C:/Users/marip_000/Desktop/specdata")
directorio <- "C:/Users/marip_000/Desktop/specdata"

corr <- function(directorio,horizonte=0){
    vec1 <- vector("numeric")
    vec2 <- vector("numeric")
    
    for(i in 1:332){
        if(i <10){
            i = paste("00",i,sep = "")
        } else if (i>=10 && i<100){
            i = paste("0",i,sep = "")
        } else {
            i=paste(i,sep = "")
        }
        leer <- read.csv(paste(i,".csv",sep = ""))
        datos <- complete.cases(leer)
        reales  <- leer[datos,2:3]
        numero <- nrow(reales)
        if(numero >= horizonte){
            vec1 <- cor(reales[,1],reales[,2])
            vec2 <- c(vec2,vec1)
        }
    }
    vec2
}

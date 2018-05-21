setwd("C:/Users/marip_000/Desktop/calidad de hospitales")
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
head(outcome) 
ncol(outcome)
names(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])
outcome[, 7]
length(outcome)
ggg <- levels(outcome[,7])
length(ggg)


mejor <- function(estado,resultados){
    leer <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
    estados <- unique(leer[,7])
    CodigoEstado <- FALSE
    n <-nrow(leer)
    
    for (i in 1:length(estados)) {
        if (estado == estados[i]) {
            CodigoEstado <- TRUE
        }
    }
    
    if (!CodigoEstado) {
        stop ("estado invalido")
    }
    

        if(resultados=="ataque"){
          x <- 11
        }else if(resultados=="falla"){
          x <-  17
        }else if(resultados=="neumonia"){
          x <- 23
        }else if (resultado %in% v == F){
            stop("resultado inválido")
            break
        }
        
    a <- matrix(leer[,x],n,1)
    leer[,x] <- suppressWarnings(as.numeric(a))
    leer[,2] <- as.character(leer[,2])
    
    b <- leer[grep(estado,leer$State),]
    
    ordenar <- b[order(b[,x], b[,2], na.last=NA),]
    
    e <- matrix(leer[,7], n,1)
    
   
    
    ordenar[1,2]
}



    
setwd("C:/Users/marip_000/Desktop/calidad de hospitales")


rankhospital <- function(estado, resultado, num){
leer <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
estados <- unique(leer[,7])
CodigoEstado <- FALSE
n <- nrow(leer)

    for (i in 1:length(estados)) {
        if (estado == estados[i]) {
            CodigoEstado <- TRUE
    }
}

    if (!CodigoEstado) {
        stop ("estado invalido")
}


    if(resultado=="ataque"){
        x <- 11
        }else if(resultado=="falla"){
        x <-  17
        }else if (resultado=="neumonia"){
        x <- 23
        }else if (resultado %in% v == F){
            stop("resultado inválido")
            break
        }

        e <- leer[leer$State == estado,]
        y <- e[,c(2,x)]
        
    if (sum(y[,2]=="Not Available") < 1) {
        
        z <- y[order(as.numeric(final[,2])),]
        if (num == "mejor") num <- 1
        else if (num == "peor") num <- nrow(z)
        else if (num > nrow(z)) {
            stop(return(NA))
        }
        i <- 0
        while (z[i+1,2] != z[num,2]){
            i <- i + 1
        }
        dif <- num - i
        z2 <- z[which(z[,2] == z[num,2]),]
        a <- z2[order(z2[,1]),]
        a[dif,1] 
    }
        
        else  {
            final <- y[- grep("Not", y[,2]),]
            z <- final[order(as.numeric(final[,2])),]
            if (num == "mejor") num <- 1
            else if (num == "peor") num <- nrow(z)
            else if (num > nrow(z)) {
                stop(return(NA))
            }
            i <- 0
            while (z[i+1,2] != z[num,2]){
                i <- i + 1
            }
            dif <- num - i
            z2 <- z[which(z[,2] == z[num,2]),]
            a <- z2[order(z2[,1]),]
            a[dif,1]
        }
}

rankhospital("TX", "falla", 4)
rankhospital("MD", "ataque", "peor") 
rankhospital("MN", "ataque", 5000)


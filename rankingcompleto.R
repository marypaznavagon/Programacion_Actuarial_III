setwd("C:/Users/marip_000/Desktop/calidad de hospitales")

rankingcompleto <- function(resultado,num){

    leer <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    n <- nrow(leer)
    options(warn = -1)



    if(resultado=="ataque"){
            cl <- split(leer[c(2,7,11)],leer[c(2,7,11)]$State)
        }else if(resultado=="falla"){
            cl <-  split(leer[c(2,7,17)],leer[c(2,7,17)]$State)
        }else if (resultado=="neumonia"){
            cl <- split(leer[c(2,7,23)],leer[c(2,7,23)]$State)
        }else if (resultado %in% v == F){
            stop("resultado inválido")
            break
        }

    Hos <- c()

for(i in 1:54){
    m <- cl[i][[1]][,1]
    r <- as.numeric(cl[i][[1]][,3])
    x <- na.omit(data.frame(m,r))
    o <- with(x,order(r,m))
    x <- x[o,][1]
    y <- nrow(x)
    
        if(num=="mejor"){
            Hos <- c(Hos,as.character(x[1,1]))
        }else if(num=="peor"){
            Hos <- c(Hos,as.character(x[y,1]))
        }else if(0<num & num<=y ){
            Hos <- c(Hos,as.character(x[num,1]))
     

head(rankingcompleto("ataque", 20), 10)
tail(rankingcompleto("neumonia", "peor"), 3)
ta   }else if (y<num){
            Hos <- c(Hos,as.character(x[y+1,1]))
        } 
}
Estado <- sort(unique(leer$State))
data.frame(Hos,Estado)

}il(rankingcompleto("falla"), 10)

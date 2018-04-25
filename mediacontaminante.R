setwd("C:/Users/marip_000/Desktop")
directorio <- "C:/Users/marip_000/Desktop/specdata"
read.csv(file="specdata/001.csv")


    # read.csv(paste(directorio,"/","00",i,".csv",sep = ""))


mediacontaminante <- function(directorio,contaminante = "nitrate" ,id = 1 :332) {
  
    vec1 <- 0
    vec2 <- 0
 
     if (contaminante== "sulfate") { 
      columna= 2
  } else if(contaminante == "nitrate"){
      columna=3
  } 
  
  for (i in id){
      
       if(i<10){
          i = paste("00",i,sep = "")
      } else if(i>=10 && i<100){
          i = paste("0",i,sep = "")
      } else{
          i = paste(i,sep="")
      }
      
      leer <- read.csv(paste(i,".csv",sep = ""))
      comp <- complete.cases(leer)
      estossi <- leer[comp,2:3]
      vec1 <- vec1 + sum(reales[,B])
      vec2 <- vec2 + nrow(estossi)
      
  }
    promedio <- vec1/vec2
    promedio
}    
      
      
 
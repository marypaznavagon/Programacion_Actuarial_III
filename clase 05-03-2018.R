# Dump y Source

setwd("~/GitHub/Programacion_Actuarial_III")
x <- "Software Actuarial III" 
y <- data.frame(a=1, b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")

#dump y source trabajan con las instrucciones de cóigo que permitiran volver a construir un objeto en lugar de obtenerlo desde alguna ubicación guardada.

#Conexiones 
con <- url("https://www.fcfm.buap.mx/")
x <- readLines (con,7)
x[7]  <- "\t<title>Mi gordito precioso </title>"

writeLines(x,"FCFM.txt")

#Creamos un vector
x <- c("a","b","c","c","d","e")
#Vemos el vector
x
#Extraemos elementos con []
x[1]
x[2]
#También podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen una restricción
x[x>"b"]
#De manera equivalente se puede obtener un vector lógico
u <- x == "c"
u
x[u]

#Creamos una lista
x <- list(foo=1:4,bar=0.6)
x
x[1]
#el resultado es una lista que contiene al vector de la secuencia de numeros
x[[1]]
#el resultado es el vector de la secuencia de numeros
x$foo
#El resultado fue un vector como con [[]]
x["bar"]
x[["bar"]]

x <- list(foo=1:4,bar=0.6, baz= "Hola")
x[c(1,3)]
#Extrae elementos no secuenciales 1=si, 2=no, 3=si
x[[c(1,3)]]
#Extrae secuencialmente desde los elementos extraidos
#Primero extrae el 1er elemento y de ahi extrae la 3ra posición

name <- "baz"
x[name]
x[[name]]
x$name
#Si yo quiero realizar extracciones con el $, es necesario escribir el nombre del objeto que quiero extraer, ya que no es capaz de realizar evaluaciones

#Se puede extraer elementos de los elementos extraídos
x <- list(a= list(10,12,14), b= list(3.14,2.81))
x[[c(1,3)]]
#Aqui el 14 es un vector por que toma la clase final
x[[1]][[3]]
#En este ejemplo, tambien es un vector, si se ubiese escrito [3], el 14 seria una lista
x[[c(2,1)]]

x <- matrix(1:6,2:3)
x
x[1,2]
#Extrae el elemento que esta en la posición indicada, en forma de vector
x[1,]
#Así te extrae el renglón completo, de manera similar se puede hacer para una columna

x <- matrix(1:6,2:3)
x
x[1,2]
#Con drop=false, se mantiene la dimensión y el resultado será una matriz
x[1, ,drop=F]

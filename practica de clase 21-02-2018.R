#Aqu� se esta realizando una asignaci�n
x <- 1L
x <- 2 

#visualizar el resultado
print(x)

#impresi�n implicita
x

#La asignaci�n puede hacerse en textos
msg <- "Hola"
print(msg)

# expresi�n incompleta
x <-
3

# Impresi�n de un arreglo
x <- 1:20
x

y <- 3:9
y

z <- 99:43
z
#  el operador ":" me permite generar secuencias num�ricas de un punto a otro

w <- 3:14.5 
w

s <- 3:9:7
s

attributes(z)

#Es posible crear un vector con la funci�n c()

x <- c(TRUE, FALSE, TRUE, TRUE, F, F, T) #logical
X
x <- c(1L,3L,5L,-4L)                     #Enteros
x <- c(1+1i,3+4i,-5-6i,3.14-1.618i)      #Complex
x <- c("a","b","c","hola","Mundo")       #Character

# otra forma de crear un vector
x <- vector("numeric", length = 10)
x
# El vector se crea vacio

y <- c(1.7, "a")        #character
y <- c(TRUE,2L,2)       #Numeric
y <- c(TRUE,2L,5, 5+4i) #complex

#Coerci�n forzada
z <- 0:6        #interger
as.numeric(z)   #numeric
as.logical(z)   #logical - los 0 se vuelve falso y todo lo demas 1 
as.character(z) #character todo se vuelve texto

#Errores en la coerci�n forzazda
x <- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)
#Apareceran NA porque esa coerci�n no es posible generar un valor



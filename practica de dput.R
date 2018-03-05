mtcars
y <- data.frame(mtcars)
dput(y)
dput(y, file="~/GitHub/Programacion_Actuarial_III/y.R")
carrosMarypaz <- dget(file="~/GitHub/Programacion_Actuarial_III/y.R")
dput(carrosMarypaz)

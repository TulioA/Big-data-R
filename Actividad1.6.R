#Crear dataframe
peso <- c(80,77,79,97,72,82,88,110,81,78,55,59,56,66,63,67,74,72,55,64)
altura <- c(1.75,1.72,1.72,1.84,1.63,1.78,1.79,1.84,1.79,1.74, 1.53,1.57,1.50,1.58,1.54,1.61,1.70,1.63,1.51,1.60)
sexo <- c("Masculino","Masculino","Masculino","Masculino","Masculino","Masculino","Masculino","Masculino","Masculino","Masculino","Femenino", "Femenino","Femenino", "Femenino","Femenino", "Femenino","Femenino", "Femenino","Femenino", "Femenino")
imc <- c(peso[1:20]/(altura[1:20]*altura[1:20]))

daf <- data.frame(peso, altura, sexo, imc)

#Promedio de pesos por sexo
mean(peso[which(sexo=="Masculino")])
mean(peso[which(sexo=="Femenino")])

#Renombrar
rownames(daf) <- c("Alberto","Miguel","Eric","Osvaldo","Juan","Cruz","Antonio","Ivan","Oscar","Gael","Rosa","Nilda","Marcela","Veronica","Maria","Claudia","Ana","Laura","Karen","Noemi")

#Grafica de Altura
hist(x=daf$altura, main = "Altura", xlab = "altura", ylab = "Num estudiantes")

#Creacion de tablas y grafica imc por sexo
tableDSex <- table(daf$imc, daf$sexo)
print(tableDSex)
tableG <- table(daf$sexo, daf$imc)
print(tableG)
barplot(tableG, main = "Sexo", xlab = "IMC", ylab = "Num Estudiantes")



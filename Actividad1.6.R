#Crear dataframe
peso <- c(80,77,79,97,72,82,88,110,81,78,55,59,56,66,63,67,74,72,55,64)
altura <- c(1.75,1.72,1.72,1.84,1.63,1.78,1.79,1.84,1.79,1.74, 1.53,1.57,1.50,1.58,1.54,1.61,1.70,1.63,1.51,1.60)
sexo <- c("M","M","M","M","M","M","M","M","M","M","F", "F","F", "F","F", "F","F", "F","F", "F")
imc <- c(peso[1:20]/(altura[1:20]*altura[1:20]))

daf <- data.frame(peso, altura, sexo, imc)


#Promedio de pesos por sexo
mean(peso[which(sexo=="M")])
mean(peso[which(sexo=="F")])
mean(peso)


#Renombrar
rownames(daf) <- c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T")


#Grafica de Altura
#cantidades repetidas intervalos
hist(daf$altura, main = "Altura", xlab = "altura", ylab = "personas")
#completa
barplot(daf$altura, main = "Altura", names.arg = row.names(daf), xlab = "Personas", ylab = "Altura")



#Creacion de tablas y grafica imc por sexo
tableG <- table(daf$sexo, daf$imc)
print(tableG)
barplot(daf$imc, main = "Sexo", names.arg = daf$sexo, xlab = "sexo", ylab = "personas")


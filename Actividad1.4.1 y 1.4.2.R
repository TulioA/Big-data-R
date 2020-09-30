#parte 1
edad = c(21,21,22,22,21,22,23,24,22,23)
aNacimiento = c(2020 - edad[1:10])
tel = c(3121231232, 3151323223, 3464321254, 3311231232, 3319857363, 3125551000, 3414192928, 3411231297, 3411492972, 3411551212)

alumnos <- cbind(edad, "año de nacimiento"=aNacimiento, "telefono"=tel)
alumnos <- rbind(alumnos, promedio=c(mean(edad),mean(aNacimiento), mean(tel)))
alumnos


#parte 2
nombres <- c("José","Juan", "Omar", "Gael", "Rafael", "Antonio", "Cruz", "Miguel", "Alvaro",  "Eric","Promedio")
dimnames(alumnos) <- list(nombres)
alumnos


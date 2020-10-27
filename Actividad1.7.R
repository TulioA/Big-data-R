#Ciclo for
ti <- Sys.time()
n <- 4
for (i in 1:(n-1)) {
  if( n == 0)
  {}
  n <- n * i
}
n
print(Sys.time() - ti)

#Ciclo While
ti <- Sys.time()
i<-1
n2<- 4
vfact <- n2
while(TRUE){
  if(i==n2)
    break
  else
    vfact <- vfact * i
  i <- i + 1
}
vfact
print(Sys.time() - ti)


#Funcion factorial
ti <- Sys.time()
print(factorial(4))
print(Sys.time() - ti)


#Funcion recursiva
ti <- Sys.time()
funcionFacto <- function(nfact){
  if(nfact==0)
    return (1)
  else
    return(nfact*funcionFacto(nfact-1))
}
funcionFacto(4)
print(Sys.time() - ti)


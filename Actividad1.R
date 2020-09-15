x <- seq(1,100,by=2)
y <- seq(2,100,by=2)
z <- c(x,y)
for(i in 1 : 100)
{
  if(z[i]%%3 == 0)
  {
    print(z[i])
  }
}



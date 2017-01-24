#This code plots a 3D surface plot, which is a function of two variables x and y.

#Create the vector for the x-axis ranging from -8 to 8, with 50 elements long.
x <- seq(-7, 7, length=50)

#Create a y axis of the same size and spacing as x.
y <- x

#Define the function of x and y, which in this case is a Gaussian shaped function.
f <- function(x,y)
{
  5*exp(-(x^2+y^2)/10)
}

#Perform the outer product for the z values of the 3D surface plot.  Essentially, this creates a value
#of the function at each (x,y) co-ordinate on the x-y plane. 
z <- outer(x, y, f)

#Set some permanent plot parameters. In this case, the only permanent parameter is that the background is set
#to white.
par(bg = "white")

#Now generate the 3D surface plot as a function of x and y.  Theta and phi provide the polar and azimuthal viewing
#from which to view the surface plot.  'expand' shows the amount of stretch over whcih to view the plot.
#The color of the surface plot can also be set, the axes can be labeled and the number of tick marks plus labels
#can also be specified.
persp(x, y, z, theta = 45, phi = 20, expand = 0.5, col = "orange",
      xlab = "X", ylab = "Y", zlab = "Z", axes=T, ticktype = "detailed", nticks = 10)


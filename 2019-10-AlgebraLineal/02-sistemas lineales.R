
library(reticulate)


# Utilizamos solve para resolver la ecuacion de un sistema lineal
# x1  + x2  + 2x3 = 9
# 2x1 + 4x2 - 3x3 = 1
# 3x1 + 6x2 - 5x3 = 0

# Lo escribimos en forma matricial
A = rbind(c(1,1,2),c(2,4,-3),c(3,6,-5))
b = c(9,1,0)
AB = cbind(A,b)

# Comprobamos que el rango de $A$ es igual al de la ampliada, para ver si el sistema es compatible
qr(A)$rank==qr(AB)$rank


# Ahora, comprobamos si es igual al número de incógnitas, para ver si es compatible determinado
# incognitas es el numero maximo de x, en este caso es x3
qr(A)$rank==3

# Una vez visto que se trata de un sistema compatible determinado por el Teorema de Rouché-Frobenius, resolvemos:

solve(A,b)

# la solución es 
# como sacando los valores de x
# x1 = 1, x2 = 2 y x3 = 3
# para ver que sea correcto podemos reemplazar los valores de x1, x2 y x3 por cada valor



# Otra forma de comprobar que la solución obtenida es la correcta, es realizando el siguiente 
# producto de matrices y ver que es igual al vector de términos independientes
solution = c(1,2,3)
A%*%solution

# Da TRUE en los 3, el calculo es correcto
A%*%solution == b


## Sistemas compatibles determinados con `R`

#########################
#####     matlib     #### 
#########################

# Instalaciones previas en Ubuntu
# sudo apt install libglu1-mesa-dev
# sudo apt-get install libcurl4-openssl-dev
# apt-cache search libcurl

# libreria que nos ayuda a trabajar mejor con algebra lineal
install.packages("matlib")
library(matlib)

# Hay otra forma de resolver sistemas compatibles determinados. 
# La librería `matlib` nos ofrece, aparte de la función `Solve`, muchas otras funciones que pueden 
# sernos de utilidad a la hora de resolver sistemas de ecuaciones lineales. Sobre todo, los de 2 o 3 ecuaciones.


# 2x1 + 2x2 = 1
# -x1 +  x2 = 2

A = rbind(c(2,2),c(-1,1))
b = c(1,2)
AB = cbind(A,b)

# Una vez lo tenemos en forma matricial, podemos mostrarlo con la función `showEqn()`
# Nos muestra tal cual la ecuacion
showEqn(A, b)

# Rango de una matriz
R(A) # rango de A
R(AB) # rango de la ampliada


# Comprobamos si es compatible, es decir
# Si el rango de A y de la ampliada son iguales
all.equal(R(A),R(AB))

# fractions = TRUE -> solucion en formato de fraccion
Solve(A, b, fractions = TRUE)

# me devuelve por ejemplo 
# x1 = -3/4
# x2 = 5/4





# En este caso tenemos:
#  2*x1 + 2*x2 = 1
# -1*x1 +   x2 = 2

showEqn(A,b)

# me lo muestra en formato grafico, con lineas y la interseccion
plotEqn(A,b)



plotEqn(A,b)

# Dibujar un punto con cierta caracteristicas, siempre despues de plotEqn
points(-3/4,5/4, col = "turquoise1", pch = 19)


# $$\left\{ \begin{matrix}4x&+&2y&=&3\\ x&-&2y&=&2\\ 3x&+&4y&=&1\end{matrix}\right.$$


A = rbind(c(4,2),c(1,-2),c(3,4))
b = c(3,2,1)
showEqn(A,b) # vemos las ecuacines de una manera mas amigable
plotEqn(A,b) # vemos el grafico


# Una con 3 variables
A = rbind(c(1,1,2),c(2,4,-3),c(3,6,-5))
b = c(9,1,0)
showEqn(A,b)
plotEqn3d(A,b, xlim = c(-3,3), ylim = c(0,6)) # la representamos en 3D

# La librería `matlib` también nos ofrece la oportunidad de utilizar el Método de Gauss para resolver sistemas de ecuaciones lineales.
# La función `echelon()` nos calucla la matriz escalonada reducida

#  x1 +  x2 + 2x3 = 9
# 2x1 + 4x2 - 3x3 = 1
# 3x1 + 6x2 - 5x3 = 0
A = rbind(c(1,1,2),c(2,4,-3),c(3,6,-5))
b = c(9,1,0)
AB = cbind(A,b)



echelon(AB)
# Nos devuelve
#       b
# 1 0 0 1
# 0 1 0 2
# 0 0 1 3

# Donde podemos deducir que la solucion es
# x1 = 1, x2 = 2 y x3 = 3


# verbose = true nos muestra en detalle todo lo que ha hecho
echelon(AB, verbose = TRUE, fractions = TRUE)


# Sistemas compatibles indeterminados con `R`

# no podemos aplicar directamente la función `solve()`, ya que ésta solamente está pensada para sistemas compatibles determinados.
#  x + y - z = 2
#  x - y + z = 1
# 3x + y - z = 5


A = matrix(c(1,1,-1,1,-1,1,3,1,-1), byrow = TRUE, nrow = 3, ncol = 3)
b = c(2,1,5)
AB = cbind(A,b)


c(R(A),R(AB)) # Compatible
all.equal(R(A),R(AB)) # Pero indeterminado, porque el Rango es menor al numero de incognitas


# Me queda una fila de cero, no tiene pivote
echelon(AB)

# Lo resuelve de la siguiente manera con Solve (en mauscula), es de matlib
# x1 = 3/2
# x2 - 1*x3 = 1/2    -> aca vemos que x2 depende de x3
Solve(A,b, fractions = TRUE)

# Lo vemos en 3d
plotEqn3d(A,b, xlim = c(-10,10), ylim = c(-10,10), zlim = c(-10,10))

## Ejemplo 5

# Con todas las funciones presentadas anteriormente, es fácil averiguar si el sistema con el que estamos trabajando es un sistema incompatible. 

#  x + y = 2
#  x - y = 1
# 2x + y = 3

A = cbind(c(1,1,2),c(1,-1,1))
b = c(2,1,3)
AB = cbind(A,b)



c(R(A),R(AB))
all.equal(R(A),R(AB))

echelon(AB)

Solve(A,b, fractions = TRUE)

# 0 = 1/3 -> Esto no puede ser, nos damos cuenta que es incompatible

# No hay un punto de interseccion comun, las 3 se cortan por 2 lineas
plotEqn(A,b, xlim = c(0,2), ylim = c(0,1.5))

## Ejemplo 5

# Ax + 3B = (C + D)x + 3D + 10I
# Nos queda asi al despejar la x:
# (A - (C + D))x = 2(D - B) + 10I

A = rbind(c(0,4),c(2,1))
B = rbind(c(1,-1),c(2,3))
C = rbind(c(1,2),c(3,-2))
D = rbind(c(-2,1),c(-1,1))
I = diag(1, nrow = 2, ncol = 2)


M = A-(C+D)

N = 3*(D-B)+10*I


X = solve(M,N)
X

A%*%X + 3*B == (C+D)%*%X+3*D+10*I

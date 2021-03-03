
library(matlib)
library(Biodem)
library(expm)

# $$A = \begin{pmatrix}1 & 3 & 0 & -1\\
# 2 & 1 & -1& 5\\
# 0 & -2& 3 & -1\\
# 1 & 1 & 3 & 1\end{pmatrix}$$

# Para realizar una factorización LU con `R`, podemos utilizar la función `LU()` introduciendo por parámetro una matriz cuadrada.
# La función devolverá una lista con tres componentes:
# matriz P: la que nos indica los cambios de filas
# matriz L: triangular inferior
# matriz U: triangular superior
A = rbind(c(1,3,0,-1), c(2,1,-1,5), c(0,-2,3,-1), c(1,1,3,1))
luA = LU(A)

luA$P # orden 4, no ha sido necesario cambiar ninguna fila de orden
luA$L # triangular inferior
luA$U # triangular superior



# $$A = \begin{pmatrix}0 & 1 & 3\\
# 1 & 3& -2\\
# -3 & -2 & -1
# \end{pmatrix}$$


A = matrix(c(0,1,3,1,3,-2,-3,-2,-1), byrow = T, nrow = 3, ncol = 3)
luA = LU(A)

# En este caso, sí se han permutado filas,la matriz P no es la matriz identidad
luA$P

luA$L
luA$U

## Factorizaciones LU con `R` 

# resolver sistemas de ecuaciones lineales aplicando LU

# se añade un parámetro más. Lo que implica que además de las matrices $P$,$L$ y $U$, 
# la función nos devuelve dos vectores más: $d$ y $x$

# $x$ es la solución del sistema
# $d$ es el vector solución del sistema $Ld = b$, que luego nos sirve para resolver $Ux = d$


# $$\left\{\begin{matrix}
# && x_2 &+& 3x_3 &=& 1\\
#    x_1 &+& 3x_2 &-& 2x_3 &=& 3\\
#  -3x_1 &-& 2x_2 &-& x_3  &=& -2
# \end{matrix}\right.$$

A = rbind(c(0,1,3), c(1,3,-2), c(-3,-2,-1))
b = c(1,3,-2)
sistema = LU(A,b) 


sistema$P # sa cambiaron orden de filas
sistema$L # triangular inferior
sistema$U # triangular superior


sistema$d # solucion sistema L*d
sistema$x # solucion sistema U*d¨





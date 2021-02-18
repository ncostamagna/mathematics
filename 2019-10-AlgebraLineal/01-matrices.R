
library(Biodem)
library(expm)

# Crear una matriz
row = matrix(c(1,2,3,4), nrow = 1)
row

# Para crear una matriz columna,
col = matrix(c(1,2,3), ncol = 1)
col

## Para crear matrices se utiliza la instrucción `matrix()`
# n fila, n columna y si queres que vaya introducida por fila o no

# byrow -> leer por fila
A = matrix(c(1,1,3,5,2,4,3,-2,-2,2,-1,3), nrow = 3, ncol = 4, byrow = TRUE)
A

B = matrix(c(1,0,2,3,3,2,1,-2,3), nrow = 3, byrow = FALSE)
B

# También podemos crear matrices con las funciones `bind()`, es para unir filas
# Los pone uno encima del otro (por fila o por coumna)

C = rbind(c(1,2,3),c(4,5,6),c(7,8,9))
C

D = cbind(c(1,2,3),c(4,5,6),c(7,8,9))
D


A[3,3] #Elemento a33
A[1,] #Primera fila
B[,2] #Segunda columna

## Crear matriz nula
O = matrix(0, nrow = 3, ncol = 3)
O

# Para crear una matriz de unos,
ones = matrix(1, nrow = 3, ncol = 3)
ones

# Para crear una matriz diagonal, utilizamos la función `diag()`
E = diag(c(1,2,3,4,5,6))
E

## Para obtener los elementos de la diagonal de una matriz, utilizamos la función `diag()`
## introduciendo por parámetro la matriz pertinente:
M = rbind(c(1,0,1),c(2,-1,5),c(3,3,2))
diag(M)

# Para obtener el número de filas o columnas de una matriz
nrow(M)
ncol(M)


## Dimension de la matriz
dim(M)

##suma de todos los elementos de dicha matriz
sum(M)


rowSums(M) #sumas por filas
colSums(M) #sumas por columnas
prod(M) # producto de todos los elementos
mean(M) # Media aritmetica de toda la matriz
rowMeans(M) #media por filas
colMeans(M) #media por columnas

## Operaciones con matrices en `R`


M
t(M) #  transpuesta de una matriz

# Para calcular la traza de la matriz (la suma de los elementos de la diagonal)
sum(diag(M))


# La suma de matrices:
  
A = rbind(c(1,2,3),c(4,5,6),c(7,8,9))
B = rbind(c(1,0,2),c(3,0,4),c(5,0,6))
A+B
B+A


5*A # Producto de un escalar


# El producto de matrices:
# NO ES CONMUTATIVO
A%*%B
B%*%A


# Fijaos que el producto de matrices se consigue aplicando `%*%` y no `*`. 
# En el segundo caso, lo que hace `R` es devolver como resultado una matriz $C = (c_{ij})$ cuyos elementos son $c_{ij}=a_{ij}\cdot b_{ij}$.
# Osea a11 por b11, a12 por b12
A*B

# Para comprobar que dos matrices son iguales
A+B == B+A
A%*%B == B%*%A



# Para calcular la potencia $n$-ésima (aproximada) de una matriz, utilizamos la función `mtx.exp()`, del paquete `Biodem`
# Matriz elevado a 4 seria igual a A%*%A%*%A%*%A%*%A
mtx.exp(A,4) ## con el package Biodem
A%^%4 ## con el package expm

## Rango e inversa
Z = rbind(c(1,2,3,23,12),c(4,5,6,34,12),c(7,8,9,45,23),c(21,32,13,231,112),c(34,12,1,3,2))
qr(Z)$rank # Rango
solve(Z) # Inversa (aproximada), tiene que tener inversa
round(Z%*%solve(Z)) # Identidad = M * Mi
round(solve(Z)%*%Z)

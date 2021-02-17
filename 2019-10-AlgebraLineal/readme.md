# Indice
- [R](#r)
    - [Matrices](#matrices)
    - [Operaciones con matrices](#operaciones-con-matrices)
    - [Rango e inversa](#rango-e-inversa)

# R

## Matrices
Crear una matriz
```r
row = matrix(c(1,2,3,4), nrow = 1)
```

Para crear una matriz columna,
```r
col = matrix(c(1,2,3), ncol = 1)
```



Para crear matrices se utiliza la instrucción `matrix()`<br />
n fila, n columna y si queres que vaya introducida por fila o no<br />

```sh
byrow -> leer por fila
```

```r
A = matrix(c(1,1,3,5,2,4,3,-2,-2,2,-1,3), nrow = 3, ncol = 4, byrow = TRUE)

B = matrix(c(1,0,2,3,3,2,1,-2,3), nrow = 3, byrow = FALSE)
```

También podemos crear matrices con las funciones `bind()`, es para unir filas<br />
Los pone uno encima del otro (por fila o por coumna)
```r
C = rbind(c(1,2,3),c(4,5,6),c(7,8,9))

D = cbind(c(1,2,3),c(4,5,6),c(7,8,9))


A[3,3] #Elemento a33
A[1,] #Primera fila
B[,2] #Segunda columna
```


Crear matriz nula
```r
O = matrix(0, nrow = 3, ncol = 3)
```

Para crear una matriz de unos
```r
ones = matrix(1, nrow = 3, ncol = 3)
```

Para crear una matriz diagonal, utilizamos la función `diag()`
```r
E = diag(c(1,2,3,4,5,6))
```

Para obtener los elementos de la diagonal de una matriz, utilizamos la función `diag()`<br />
introduciendo por parámetro la matriz pertinente:
```r
M = rbind(c(1,0,1),c(2,-1,5),c(3,3,2))
diag(M)
```

Para obtener el número de filas o columnas de una matriz
```r
nrow(M)
ncol(M)
```



```r
dim(M) #Dimension de una matriz, devuelve un array [3,2]
sum(M) #suma de todos los elementos de dicha matriz
rowSums(M) #sumas por filas
colSums(M) #sumas por columnas
prod(M) # producto de todos los elementos
mean(M) # Media aritmetica de toda la matriz
rowMeans(M) #media por filas
colMeans(M) #media por columnas
```

## Operaciones con matrices

```r
t(M) #  transpuesta de una matriz
```

Para calcular la traza de la matriz (la suma de los elementos de la diagonal)
```r
sum(diag(M))
```

La suma de matrices:  
```r
A = rbind(c(1,2,3),c(4,5,6),c(7,8,9))
B = rbind(c(1,0,2),c(3,0,4),c(5,0,6))
A+B
B+A
```


```r
5*A # Producto de un escalar
```



El producto de matrices:<br />
**NO ES CONMUTATIVO**

```r
A%*%B
B%*%A
```

Fijaos que el producto de matrices se consigue aplicando `%*%` y no `*`. <br />
En el segundo caso, lo que hace `R` es devolver como resultado una matriz $C = (c_{ij})$ cuyos elementos son $c_{ij}=a_{ij}\cdot b_{ij}$.<br />
Osea a11 por b11, a12 por b12<br />
```r
A*B
```

Para comprobar que dos matrices son iguales
```r
A+B == B+A
A%*%B == B%*%A
```




Para calcular la potencia $n$-ésima (aproximada) de una matriz, utilizamos la función `mtx.exp()`, del paquete `Biodem`<br />
Matriz elevado a 4 seria igual a A%*%A%*%A%*%A%*%A 
```r
library(Biodem)
library(expm)

mtx.exp(A,4) ## con el package Biodem
A%^%4 ## con el package expm
```


## Rango e inversa
```r
qr(A)$rank # Rango


solve(M) # Inversa (aproximada), tiene que tener inversa
round(M%*%solve(M)) # Identidad = M * Mi
round(solve(M)%*%M)
```


# Indice
- [Matrices](#matrices)
    - [Tipo de matrices](#tipo-de-matrices)
    - [Operaciones de matrices](#operaciones-de-matrices)
    - [Propiedades de matrices](#propiedades-de-matrices)


# Matrices

                3
          [ a b c ]
    A = 2 [ d e f ]
          [ g h i ]   

    A23 = f

## Tipo de matrices

### Matriz Fila

     [ d e f ]

### Matriz Columna

    [ a ]
    [ d ]
    [ g ]

### Matriz Nula
Todos los cocientes son cero

    [ 0 0 0 ]
    [ 0 0 0 ]
    [ 0 0 0 ]   

### Matriz Cuadrada
Matriz de orden N, columnas coinciden con fila

     [ 0 c ]
     [ d f ] 

### Matriz Diagona
Tiene cero fuera de la diagonal principal

    [ x y y ]                   [ 1  0  0 ]
    [ y x y ]                   [ 0 -2  0 ]
    [ y y x ]                   [ 0  0  5 ]

    x = diagonal principal

### Matriz Escalar
Ademas de ser matriz diagonal, la diagonal principal tiene el mismo numero

         [ 7 0 0 ]
    A =  [ 0 7 0 ]
         [ 0 0 7 ]   


### Matriz Identidad
Ademas de ser matriz diagonal, la diagonal principal tiene **siempre 1**

         [ 1 0 0 ]
    A =  [ 0 1 0 ]
         [ 0 0 1 ]   

### Matriz Triangular Superior
Cero abajo de la diagonal ( no necesaiamente tiene que ser cuadradda)

         [ 1 3 1 4 ]
         [ 1 2 3 1 ]
    A =  [ 0 4 5 2 ]
         [ 0 0 1 3 ]
         [ 0 0 0 4 ]   

### Matriz Triangular Inferior
Cero arriba de la diagonal ( no necesaiamente tiene que ser cuadradda)

         [ 1 0 0 0 ]
         [ 1 2 0 0 ]
    A =  [ 4 4 5 0 ]
         [ 2 3 1 3 ]
         [ 1 2 3 4 ]   

## Operaciones de matrices

### Suma
Solo si ambas son del mismo orden

         [ 3  5 -2  0 ]         [ 1 -4  5  2 ] 
    A =  [ 0  1  2 -1 ]     B = [ 3  2 -4  6 ] 
         [ 3  2  7  4 ]         [ 1 -3 -5  0 ] 

           [ 3+1 5-4 3-2 2+0 ]     [ 4  1  3  2 ]
    A+B =  [ 0+3 2+3 2-4 6-1 ]  =  [ 3  3 -2  5 ]
           [ 3+1 2-3 7-5 4+0 ]     [ 4 -1  2  4 ]

### Producto de un escalar

    λA = (λ * Aij)MxN

                           [ 1 2 3 ]
    Dado Lambda = 3 y A =  [ 4 5 6 ]

              [  3  6  9 ]
    λA = 3A = [ 12 15 18 ]

### Producto con matrices
Numero de columnas de **A** tiene que coincidir con el numero de filas de **B**

                                  [  2  1  ]
         [ -1  2  3  1  ]         [  0  2  ]
    A =  [  3 -2  1  0  ]     B = [ -1  3  ]
                                  [  0  1  ] 

Multiplico **filas de A** por **columnas de B**

          [ -1*2+2*0+3*(-1)+1*0 -1*1+2*2+3*3+1*1 ]     [ -5 13  ]
    AB =  [  3*2-2*0+1*(-1)+0*0  3*1-2*2+1*3+0*1 ]  =  [  5  2  ]

### Traza
Suma de los elementos de la diagonal principal
<br />

![calc](images/1.png)<br />


![calc](https://latex.codecogs.com/png.latex?tr(A)&space;=&space;a_{11}&space;&plus;&space;a_{22}&space;&plus;&space;...&space;&plus;&space;a_{nn}&space;=&space;\sum_{i=1}^{n})<br />

## Propiedades de matrices

### Conmutativa
    A + B = B + A

### Asociativa
    (A + B) + C = A + (B + C)

### Elemento Neutro de la suma
**Matriz nula** sumada con otra cualquiera da la propia matriz
    A + 0 = 0 + A = A

### Opuesta
    A + (-A) = (-A) + A = 0

![calc](images/2.png)<br />

### Asociativa
    (AB)C = A(BC)

### Distributiva
    A(B+C) = AB + AC

### Elemento Neutro o Unidad
Multiplicada por la Identidad<br />
![calc](https://latex.codecogs.com/png.latex?\\&space;AI_{n}&space;=&space;A&space;)<br />
![calc](https://latex.codecogs.com/png.latex?\\&space;I_{n}B&space;=&space;B)<br />
![calc](images/3.png)<br />

### Excepciones
No se cumple la propiedad conmutativa<br />
No se cumple la ley de simplificacion. 

    AB = AC => B <> C

Divisores de cero. El producto de que 2 matrices den cero, no implican que A o B sean cero<br />

## Matriz traspuesta
![calc](images/4.png)<br />

### Traspuesta de una suma
![calc](https://latex.codecogs.com/png.latex?(A&plus;B)^{t}&space;=&space;A^{t}&space;&plus;&space;B^{t})<br />

![calc](https://latex.codecogs.com/png.latex?(\sum_{i=1}^{r})^{t}=\sum_{i=1}^{r}A_{i}^{t})<br />

### Traspuesta de un producto
![calc](https://latex.codecogs.com/png.latex?(AB)^{t}&space;=&space;A^{t}B^{t})<br />

## Propiedades Matriz Cuadrada

### Matriz Simetrica
A es simetrica si coincide con su traspuesta<br />
![calc](images/5.png)

### Matriz Antisimetrica
A es antisimetrica si su traspuesta coincide con su opuesta<br />
![calc](images/6.png)

### Regular
Matriz multiplicada por su inversa da la identidad, sino es una matriz **Singular**<br />
![calc](images/7.png)

### Ortogonal
Es regular y ademas su inversa coincide con su traspuesta<br />
![calc](images/8.png)
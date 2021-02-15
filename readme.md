# Indice
- [Matrices](#matrices)
    - [Tipo de matrices](#tipo-de-matrices)


# Matrices

                3
          [ a b c ]
    A = 2 [ d e f ]
          [ g h i ]   

    A23 = f

## Tipo de matrices

#### Matriz Fila

     [ d e f ]

#### Matriz Columna

    [ a ]
    [ d ]
    [ g ]

#### Matriz Nula
Todos los cocientes son cero

    [ 0 0 0 ]
    [ 0 0 0 ]
    [ 0 0 0 ]   

#### Matriz Cuadrada
Matriz de orden N, columnas coinciden con fila

     [ 0 c ]
     [ d f ] 

#### Matriz Diagona
Tiene cero fuera de la diagonal principal

    [ x y y ]                   [ 1  0  0 ]
    [ y x y ]                   [ 0 -2  0 ]
    [ y y x ]                   [ 0  0  5 ]

    x = diagonal principal

#### Matriz Escalar
Ademas de ser matriz diagonal, la diagonal principal tiene el mismo numero

         [ 7 0 0 ]
    A =  [ 0 7 0 ]
         [ 0 0 7 ]   


#### Matriz Identidad
Ademas de ser matriz diagonal, la diagonal principal tiene **siempre 1**

         [ 1 0 0 ]
    A =  [ 0 1 0 ]
         [ 0 0 1 ]   

#### Matriz Triangular Superior
Cero abajo de la diagonal ( no necesaiamente tiene que ser cuadradda)

         [ 1 3 1 4 ]
         [ 1 2 3 1 ]
    A =  [ 0 4 5 2 ]
         [ 0 0 1 3 ]
         [ 0 0 0 4 ]   

#### Matriz Triangular Inferior
Cero arriba de la diagonal ( no necesaiamente tiene que ser cuadradda)

         [ 1 0 0 0 ]
         [ 1 2 0 0 ]
    A =  [ 4 4 5 0 ]
         [ 2 3 1 3 ]
         [ 1 2 3 4 ]   

## Operaciones de matrices

#### Suma
Solo si ambas son del mismo orden

         [ 3  5 -2  0 ]         [ 1 -4  5  2 ] 
    A =  [ 0  1  2 -1 ]     B = [ 3  2 -4  6 ] 
         [ 3  2  7  4 ]         [ 1 -3 -5  0 ] 

           [ 3+1 5-4 3-2 2+0 ]     [ 4  1  3  2 ]
    A+B =  [ 0+3 2+3 2-4 6-1 ]  =  [ 3  3 -2  5 ]
           [ 3+1 2-3 7-5 4+0 ]     [ 4 -1  2  4 ]

#### Producto de un escalar

    λA = (λ * Aij)MxN

                           [ 1 2 3 ]
    Dado Lambda = 3 y A =  [ 4 5 6 ]

              [  3  6  9 ]
    λA = 3A = [ 12 15 18 ]

#### Producto con matrices
Numero de columnas de **A** tiene que coincidir con el numero de filas de **B**

                                  [  2  1  ]
         [ -1  2  3  1  ]         [  0  2  ]
    A =  [  3 -2  1  0  ]     B = [ -1  3  ]
                                  [  0  1  ] 

Multiplico **filas de A** por **columnas de B**

          [ -1*2+2*0+3*(-1)+1*0 -1*1+2*2+3*3+1*1 ]     [ -5 13  ]
    AB =  [  3*2-2*0+1*(-1)+0*0  3*1-2*2+1*3+0*1 ]  =  [  5  2  ]

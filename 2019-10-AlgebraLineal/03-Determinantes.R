# Determinantes con `R`

## Ejemplo 1

# La función `det()` es la que nos calcula el determinante de cualquier matriz cuadrada en `R`

A = rbind(c(1,2), c(0,-1))
B = matrix(c(1,2,3,0,-1,5,10,2,-5), nrow = 3, ncol = 3, byrow = TRUE)


det(A) # Determinante
det(B) # Determinante

add <- function(matrix1,matrix2) {
  m = matrix( c(''), nrow = 3, ncol = 3, byrow = TRUE)
  
  for (i in 1:9){
    m[i] = as.numeric(matrix1[i]) + as.numeric(matrix2[i])
  }
  
  return(m)
}

subtract <- function(matrix1,matrix2) {
  m = matrix( c(''), nrow = 3, ncol = 3, byrow = TRUE)
  
  for (i in 1:9){
    m[i] = as.numeric(matrix1[i]) - as.numeric(matrix2[i])
  }
  
  return(m)
}

mainFunc <- function(matrix1,matrix2) {
  
  M1 = matrix( c(''), nrow = 3, ncol = 3, byrow = TRUE)
  M2 = matrix( c('','','','','',''), nrow = 3, ncol = 3, byrow = TRUE)
  Mtotal = matrix( c('','','','','',''), nrow = 3, ncol = 3, byrow = TRUE)
  
  matrixLength = 1:length(M1)
  
  for (i in matrixLength){
    M1[i] = sample(1:10,1)
    M2[i] = sample(1:10,1)
  }
  
  while (TRUE) {
    cat("\014")
    
    cat("
Matrix 1
================
")
    print(M1)
    cat("
Matrix 2
================
")
    print(M2)
    
    
    cat("
================
CHOICES:
(1) Add
(2) Subtract
")
    answer <- readline("Choice:")
    
    if (answer == 1){
      cat("
Result: Add
===============
")
      print(add(M1,M2))
      
    } else if (answer == 2){
      cat("
Result: Subtract
================
")
      print(subtract(M1,M2))
    }
    
    readline("Press enter to continue...")
    
  }
  }
mainFunc()

cat("123\n456")

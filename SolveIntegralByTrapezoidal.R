IntegralSolveTrapezoidal <- function(numberOfPoints, domain, FUN){
  N <- numberOfPoints;
  points <- CalculatePoints(N, domain)
  dx <- CalculateDx(N, domain)
  valueOfFunctions <- CalculateFunctionValue(points, N, FUN)
  valueOfIntegral <- calculateTrapezoidalArea(valueOfFunctions, N, dx)
  print(valueOfIntegral)
}
CalculatePoints <- function(N, domain){
  arrayOfPoints <- 0:N
  for(point in 0:N){
    arrayOfPoints[point+1] <- (domain[1] + (point/N)*(domain[2]-domain[1]))
  }
  arrayOfPoints
}
CalculateDx <- function(N, domain){
  dx <- (domain[2]-domain[1])/N
}
CalculateFunctionValue <- function(points, N, FUN){
  functionsValue <- 0:N
  for(point in 0:N){
    functionsValue[point+1] <- FUN(points[point+1])
  }
  functionsValue
}
calculateTrapezoidalArea <- function(valueOfFunctions, N, dx){  
  area <- (sum(valueOfFunctions[1:N]) + ((valueOfFunctions[1]+valueOfFunctions[N+1])/2)) * dx    
}

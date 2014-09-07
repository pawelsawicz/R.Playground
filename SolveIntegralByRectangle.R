IntegralSolveRectangle <- function(numberOfPoints, domain, FUN)
{
  points <- CalculatePoints(numberOfPoints, domain)  
  dx <- CalculateDx(numberOfPoints, domain)
  FUNvalues <- CalculateFunctionValues(points, numberOfPoints, FUN)
  sum(FUNvalues) * dx
}

CalculatePoints <- function(numberOfPoints, domain){
 arrayOfPoints<-(1:numberOfPoints)
   for(point in 1:numberOfPoints){
     arrayOfPoints[point] <- domain[1] + ((point/numberOfPoints) * (domain[2]-domain[1]))
    }
 arrayOfPoints
}

CalculateDx <- function(numberOfPoints, domain){
  calculatedValue <- (domain[2]-domain[1])/numberOfPoints  
}

CalculateFunctionValues<- function(valuesOfPoints, numberOfPoints, FUN){
  resultArray <- (1:numberOfPoints)  
    for(value in 1:numberOfPoints){
      resultArray[value] <- FUN(valuesOfPoints[value])
    }  
  resultArray
}


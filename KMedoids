oneClusterK.Medoids <- function(distanceMatrix, id, K){
  #distanceMatrix is the hellinger distance matrix
  #id is a vector of each sample's cluster id number. id is generated through hclust
  #K is the number of clusters
  
  # Generate K number of clusters
  allClusts <- list()
  for (i in (1:K)){
    allClusts[[i]] = list()
  }
  
  # Partition into K clusters
  for (i in 1:length(id)){
    if (length(allClusts[[id[i]]]) == 0){
      allClusts[[id[i]]] = i
    }else{
      allClusts[[id[i]]][length(allClusts[[id[i]]]) + 1] <- i}
    
  }
  
  # Fill up the top triangle of the distant matrix
  for (i in 1:nrow(distanceMatrix)){
    for (j in 1:nrow(distanceMatrix)){
      if (distanceMatrix[i,j] == 0){
        distanceMatrix [i,j] <- distanceMatrix[j,i]
      }
    }
  }
  
  #Find out the medoids
  medoids <- c()
  for(k in 1:K){
    d <- c()
    for (i in allClusts[[k]]){
      s <- 0
      for (j in allClusts[[k]]){
       s <- s + distanceMatrix[i,j] 
      }
      d[length(d) + 1] <- s
    }
    medoids[length(medoids) + 1] <- allClusts[[k]][match(min(d), d)]
  }
  
  return(medoids)
}

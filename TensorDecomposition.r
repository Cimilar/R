library(rTensor)
#CP Decomposition
subject <- faces_tnsr[,,14,]
cpD <- cp(subject,num_components=10) 
cpD$conv 
cpD$norm_percent 
plot(cpD$all_resids)
#Tucker Decomposition
tnsr <- rand_tensor(c(4,4,4,4))
tuckerD <- tucker(tnsr,ranks=c(2,2,2,2))
tuckerD$conv 
tuckerD$norm_percent
plot(tuckerD$all_resids)

txt_list <- list.files(path = "E://data")
print("a")
for(i in txt_list[1:1000])
{
  x<-read.table(paste("E://data/",i,sep = ""),header = TRUE)
  test1 <- statetable.msm(label,data=x)
  test2 <- crudeinits.msm(label ~ start_time, user_id, data=x, qmatrix=test1)
  cav.msm <- msm( label ~ start_time, subject=user_id, data = x,obstype = 2 ,opt.method = "bobyqa",qmatrix = test2,gen.inits = TRUE, 
  )
  d <- qmatrix.msm(cav.msm)
  print("1")
  sojourn.msm(cav.msm)
  for(item in d)
  {
    s <-item
    print(i)
    break
  }
  write.table(s, file = paste("E://gay1/",i,sep = ""), row.names = F, col.names = F,quote = F, sep="\t")  # tab ?????
}

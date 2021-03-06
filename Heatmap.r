library("reshape2")
library("ggplot2")
library("base")
c3<-read.table(file.choose())
m = melt(as.matrix(c3))
g = ggplot(m, aes(x=Var1, y=Var2, fill=value))+xlab('X-labels')+ylab("Y-labels")
g1=g+geom_tile(); print(g1)  
g2=g1+geom_tile(color="white", size=0.01); print(g2)#设置每个方格边框颜色（color=‘white’）和边框线的大小（size=0.1）
g3=g2+scale_fill_gradient(low='steelblue',high='black');print(g3)
g3+theme(axis.text.x = element_text(angle = 20, hjust = 0.5, vjust = 0.5))+labs(title = "Cluster6 via KL Divg.")

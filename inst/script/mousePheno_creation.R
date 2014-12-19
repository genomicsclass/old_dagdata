##Read in data
all <- read.csv("../extdata/mice_pheno.csv")
##sub populations
ind1 <- which(all$Diet=="chow" & all$Sex=="M")
ind2 <- which(all$Diet=="hf" & all$Sex=="M")

##set seed for reproducibility
set.seed(1)

##pick 12 mice from each group
N=12
dat <- all[c(sample(ind1,N),sample(ind2,N)),c("Diet","Bodyweight")]
write.csv(dat,file="../extdata/miceweights.csv",row.names=FALSE,quote=FALSE)
###write out the enitre population
write.csv(all[ind1,],file="../extdata/population.csv",row.names=FALSE,quote=FALSE)


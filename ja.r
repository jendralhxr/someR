data=read.csv("data.csv",TRUE)

val_count <- 0
val_sum <- 0
id <- unique(data[1])
for (j in id[,1]){
	val_count[j] <- 0
	val_sum[j] <- 0
}

for (i in 1:length(data[,2])){
	for (j in id[,1]){
		if (data[i,1]==j){
			val_count[j]= val_count[j]+1
			val_sum[j]= val_sum[j] + data[i,2]
		}
	}
}

for (i in 1:length(data[,2])){
	if (data[i,2]==0) data[i,2]=val_sum[data[i,1]]/val_count[data[i,1]]
}

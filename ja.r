data=read.csv("data.csv",TRUE)

id <- unique(data[1])
for (j in id[,1]){
	count[j] <- 0
	sum[j] <- 0
}

for (i in 1:length(data[,2])){
	for (j in id[,1]){
		if (data[i,1]==j){
			count[j]= count[j]+1
			sum[j]= sum[j] + data[i,2]
		}
	}
}

for (i in 1:length(data[,2])){
	if (data[i,2]==0) data[i,2]=sum[data[i,1]]/count[data[i,1]]
}

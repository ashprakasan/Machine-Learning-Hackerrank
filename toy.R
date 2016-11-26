#!/usr/bin/env Rscript
f <- file("stdin")
open(f)
#inp1 <- readline()
inp <- read.csv(f, header= FALSE,sep = " ")
cols <- inp[1,1]
rows <- inp[1,2]
end_t = rows+1
x <- inp[2:end_t,1:cols]
y <- inp[2:end_t,cols+1]
num_tests <- inp[rows+2,1]
train_data <-data.frame(x,y)
lm.fit = lm(y~.,data= train_data)
start_r <- rows+3
end_r <-rows+num_tests+2
start_c <- 1
end_c <- cols
test_data <- inp[start_r:end_r,start_c:end_c]
new_data <-data.frame(test_data)
result <- predict(lm.fit,newdata=new_data)
for (i in result){
  cat(i)
  cat('\n')
}
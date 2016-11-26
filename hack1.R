#!/usr/bin/env Rscript
f <- file("stdin")
open(f)
#inp1 <- readline()
inp <- read.csv(f, header= FALSE,sep = " ")
print(inp)
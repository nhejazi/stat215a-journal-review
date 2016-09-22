library(poibin)

probs = read.table("foobar.txt", sep = "\t", 
                   col.names = c("id", "name"), 
                   fill = FALSE, strip.white = TRUE)

probs = as.vector(probs)
out = 1 - ppoibin(689, probs, method = "DFT-CF", wts = NULL)
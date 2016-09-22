library(poibin)

probs = read.table("../data/ppoibin_probs.txt", sep = "\t", 
                   fill = FALSE, strip.white = TRUE)
probs = as.vector(probs[, 1])
out <- vector("list", length(probs))
for (i in 1:length(probs)) {
    out[i] = 1 - ppoibin(i, probs, method = "DFT-CF", wts = NULL)
}
head(out)
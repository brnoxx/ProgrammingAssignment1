setwd("C:/Users/cdot/Desktop")
cc <- NULL
cr <- NULL
corr <- function(directory, threshold = 0) {
  files_list <- list.files(directory, pattern = ".csv", full.names=TRUE)
  dat <- NULL
  k = 1
  for (i in 1:332) {
    dat <- read.csv(files_list[i])
    cc <- sum(complete.cases(dat))
    if(cc > threshold) {
      cr[k] <- cor(dat$sulfate, dat$nitrate, use = "complete.obs")
      k = k + 1
    }
  }
  return(cr)
}


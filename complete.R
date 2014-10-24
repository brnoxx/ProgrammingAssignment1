setwd("C:/Users/cdot/Desktop")
cc <- NULL
complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory, pattern = ".csv", full.names=TRUE)
  dat <- NULL
  k <- 1
  for (i in id) {
    dat <- read.csv(files_list[i])
    cc[k] <- sum(complete.cases(dat))
    k <- k + 1
     }
  output = data.frame(id, nobs = cc)
  return(output)
  }
complete("specdata", 25:30)
complete("specdata", 30:25)

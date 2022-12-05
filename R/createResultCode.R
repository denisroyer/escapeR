library(tidyverse)
library(qrcode)

createResultCode <- function(obj, url = "http://r.myasterisk.de/LSG/", suffix = ".html", site = "", debug = FALSE) {
  myHash <- rlang::hash(obj)
  if (debug == TRUE) print(myHash)
  #userName <- paste("&user=",Sys.info()["user"], sep="")
  myCode <- paste(url, site , myHash, suffix, sep = "")
  if (debug == TRUE) print(myCode)
  return(qr_code(myCode))
}

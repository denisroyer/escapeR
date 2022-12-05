# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}

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

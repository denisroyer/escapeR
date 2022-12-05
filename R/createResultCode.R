library(tidyverse)
library(qrcode)

#' Generates Result QR-Code
#'
#' @param obj An Oject to be hashed.
#' @param url An URL.
#' @param suffix Suffix of the URL.
#' @param site Additional URL parameters.
#' @param debug The debug Output
#' @return The QR-Code.
#' @export
#' @import tidyverse
#' @import qrcode
#' @examples
#' createResultCode(mtcars)

createResultCode <- function(obj, url = "http://r.myasterisk.de/LSG/", suffix = ".html", site = "", debug = FALSE) {
  myHash <- rlang::hash(obj)
  if (debug == TRUE) print(myHash)
  #userName <- paste("&user=",Sys.info()["user"], sep="")
  myCode <- paste(url, site , myHash, suffix, sep = "")
  if (debug == TRUE) print(myCode)
  return(qr_code(myCode))
}

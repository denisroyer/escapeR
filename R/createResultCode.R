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

#' Generates Result QR-Code as Images
#'
#' @param obj An object to be hashed.
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

createResultQRCode <- function(obj, url = "http://r.myasterisk.de/LSG/", suffix = ".html", site = "", debug = FALSE) {
  myHash <- rlang::hash(obj)
  if (debug == TRUE) print(myHash)
  #userName <- paste("&user=",Sys.info()["user"], sep="")
  myCode <- paste(url, site , myHash, suffix, sep = "")
  if (debug == TRUE) print(myCode)
  plot(qr_code(myCode))
}

#' Generates file name for result file
#'
#' @param obj An Object to be hashed.
#' @param suffix Suffix of the URL.
#' @param debug The debug Output
#' @return The file name.
#' @export
#' @import tidyverse
#' @import qrcode
#' @examples
#' createFileName(mtcars)

createFileName <- function(obj, suffix = ".html", debug = FALSE) {
  myHash <- rlang::hash(obj)
  if (debug == TRUE) print(myHash)
  filename <- paste(myHash, suffix, sep = "")
  return(filename)
}

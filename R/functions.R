# load html ---------------------------------------------------------------

readHtml <- function(filename){
  readChar(con = filename,
           file.info(filename)$size)
}
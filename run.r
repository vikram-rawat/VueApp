# load libraries ----------------------------------------------------------

library(fiery)
library(reqres)
library(routr)
library(jsonlite)
# library(data.table)

# set defaults ------------------------------------------------------------

# setDTthreads(0L)

# source code -------------------------------------------------------------

source("R/functions.R")
source("Routes/home.R")
source("Routes/statics.R")
source("Routes/mainRoute.R")

# create App --------------------------------------------------------------
# Create a New App
app <- Fire$new(host = "127.0.0.1",
                port = 9001)

app$attach(router)

# Be polite
app$on('end', function(server) {
    message('Goodbye')
    flush.console()
})

# serve App ---------------------------------------------------------------

app$ignite(showcase = TRUE)

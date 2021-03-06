library(ggplot2)
data(midwest)
head(midwest)
table(midwest$state)
table(midwest$state,midwest$county)
table(midwest$county)


setwd("C:/Users/pc/Desktop/SF")

USAZip <- "http://biogeo.ucdavis.edu/data/diva/adm/USA_adm.zip"

download.file(USAZip, destfile="USAmap.zip")

unzip("USAmap.zip")

# Put this all in a folder called "USAmap"

USA1 <- sf::read_sf("USAmap/USA_adm1.shp")


#############################################

head(USA1)

# Alaska? 
# Two separate geometries for simplicity?
# We are not using it here.

str_sub(USA1$VARNAME_1, 1, 2)

Code <- str_sub(USA1$VARNAME_1, 1, 2)

table(Code)

# "Co?"


# USA1$NAME_1 : full names

cbind(USA1$NAME_1,Code)
############################################

# Probably quickest to fix these manually

# This approach doesnt work, but worth a look

str_sub(USA1$NAME_1, 1, 1) %>% toupper

str_sub(USA1$NAME_1, -1, -1) %>% toupper

paste(str_sub(USA1$NAME_1, 1, 1),str_sub(USA1$NAME_1, -1, -1)) %>% toupper

paste(str_sub(USA1$NAME_1, 1, 1),str_sub(USA1$NAME_1, -1, -1),sep="") %>% toupper

# Dreadful (in this instance) !!!

############################################

# Yeah Easiest to fix these manually, and keep as a lookup table.

stateCodes <- cbind(USA1$NAME_1,Code)

# data.entry(stateCodes)

#############################################

# USA Counties

USA2 <- sf::read_sf("USAmap/USA_adm2.shp")

data(midwest)

head(midwest)

midwest$county <- toupper(midwest$county)

head(midwest)

midwest$percwhite

midwest$percwhite %>% summary

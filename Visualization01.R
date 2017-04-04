#data visualization FBI crime data
#crime in the united states by volume and rate per 100000 inhabitants 1994-2013.
#step 1 - set the working directory
setwd("F:/pluralprac")

#install packages
require(XLConnect)
wb = loadWorkbook("crime.xls")
df = readWorksheet(wb, sheet = 1, header = TRUE)
head(df)
#create a barplot for violent crimes form 1994 - 2013
barplot(names = df$Year,
        height = df$Violent.crime,
        col = "skyblue",
        main = "Violent crime from year 1994-2013",
        xlab = "Violent crime",
        ylab = "year")
#create a lattice for robbery from 1994-2013

#install a lattice package
install.packages("lattice")

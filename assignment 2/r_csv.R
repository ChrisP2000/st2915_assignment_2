#Web scrapping 

#install.packages("rvest")
#install.packages("dplyr")


library(rvest)
library(dplyr)

link <- read_html("https://en.wikipedia.org/wiki/Comma-separated_values") 

#getting all the tables from the wiki link 
allTable <- link %>% html_table(fill= TRUE)  #What the function %>% does is to pass the left hand side of the operator to the first argument of the right hand side of the operator.

#creating cars table
carsTable <- allTable[[2]]

#exporting the table created and placiing it into csv file
write.csv(carsTable, "/Users/christopherpang/Desktop/Main/SIM uni year 2/Programming for data science/R coding /assignment 2/ carsTable.CSV", row.names= FALSE)































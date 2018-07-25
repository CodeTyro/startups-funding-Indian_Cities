#Read Startup Funcing data into a data frame
#Downloaded and created the 'Indian_Startups_Funding.xlsx' file from data available at 
#http://trak.in/india-startup-funding-investment-2015
#************************************************************************************************
install.packages("xlsx")
library('ggplot2')
library('xlsx') 
DF <- read.xlsx("C:/Users/Manju/Documents/RScripts/Datasets/Indian_Startups_Funding.xlsx", 3)
head(DF)
#Select only relevant columns to understand the funding across cities and industries
filtrd_data <- DF[,c(2,4,6,8,9)] #selects only columns 2, 4, 6, 8, and 9
#List out the column names
head(filtrd_data)
#We have Date, Industry, City, InvestmentType, Amount
# Now plot the filtered data fram to understand the funding across cities and industries

ggplot(filtrd_data, aes(City, fill = Industry) ) +
  geom_bar(position = "stack")


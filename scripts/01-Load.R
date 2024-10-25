print("01-Load.R")
# Open a connection to a log file
sink('logs/CAL-Analytics_Session.log', append = FALSE)
CalData_Timestamp <- as.POSIXct(Sys.time())
print(CalData_Timestamp)
print(as.POSIXlt(Sys.time()) - CalData_Timestamp)

URI <- "https://docs.google.com/spreadsheets/d/1e8FRS3INSldjHo329_F_H0acE7sTGeuZTJ_cK2gGvy4/export?format=csv&id=1e8FRS3INSldjHo329_F_H0acE7sTGeuZTJ_cK2gGvy4&gid=305606125"
download.file(URI,"data/CAL-Analytics.csv")

CalData <- read.csv('data/CAL-Analytics.csv', sep = ',', header = TRUE)	#if tab use sep='/t'


# Close the connection
sink()
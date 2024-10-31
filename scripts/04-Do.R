print("04-Do.R")


# Packages
require('ggplot2')

# Plot Title
#ggtitle("titleName")

# Plot Labels
# xlab()  # x label
# ylab()  # y label

# Plot scale Limits
# xlim()  # x scale limit
# ylim()  # y scale limit

# Colors
# colors()


ggplot(CalData, aes(x = Year, y = Total.Reservations)) +geom_point()
ggplot(CalData, aes(x = Year, y = Unique.Reservations)) +geom_point()
ggplot(CalData, aes(x = Year, y = Total.Reservations, colour = Unique.Reservations)) + geom_point()
# View plot by quarters colored
 ggplot(CalData, aes(x = Year, y = Total.Reservations, colour = Quarter)) + geom_point()

# Control the Color of the points
ggplot(CalData, aes(x = Year, y = Total.Reservations)) + geom_point(colour = "purple")
# Break up the data into multiple plots
ggplot(CalData, aes(x = Year, y = Total.Reservations)) + geom_point(colour = "orange") + facet_wrap(~Quarter)

# With a smooth curve and confidence
ggplot(CalData, aes(x = Year, y = Total.Reservations)) + geom_point(colour = "purple") + geom_smooth()

# With a smotth curve only
ggplot(CalData, aes(x = Year, y = Total.Reservations, colour = Quarter)) +
	geom_point(colour = "purple", size = 2) +
	geom_smooth(se = FALSE)
	
# Plots every point with geom_jitter()
ggplot(CalData, aes(x = Year, y = Total.Reservations, colour = Quarter)) + geom_jitter() +
  xlab("Year-Calendar") +
  ylab("Total Reservations of Offerings") +
  xlim(2013, 2024) +
  ylim(0, 250)

# save a plot as an object
Plot_Point_CalData <- ggplot(CalData, aes(x = Year, y = Total.Reservations, colour = Quarter)) + geom_jitter() +
  xlab("Year-Calendar") +
  ylab("Total Reservations of Offerings") +
  #xlim(2013, 2024) +
  ylim(0, 250) +
  ggtitle("Computer Applications Lab for Scientific Computing")

# Print plot
print(Plot_Point_CalData)

# Summarize structure for a plot
summary(Plot_Point_CalData)


# save a plot to disk
ggsave("output/Plot_Point_CalData.png", Plot_Point_CalData, width = 10, height = 8)


# Box plot
ggplot(CalData, aes(Year, Total.Reservations)) + geom_bar(stat = "identity")

# Box plot as point
ggplot(CalData, aes(Year, Total.Reservations)) + geom_point()
# Using grouping for the quarters
# this shows 3 lines with points for the 3 quarters over time (year) with total reservations
ggplot( CalData, aes(Year, Total.Reservations, group = Quarter)) + geom_point() + geom_line()

# Adding colors
custom_colors <- c("brown", "green", "blue")
> ggplot( CalData, aes(Year, Total.Reservations, group = Quarter, colour = Quarter)) + scale_color_manual(values = custom_colors) + geom_point() + geom_line()

# Bar chart with Quarters stacked
ggplot(CalData, aes(Year, Total.Reservations, fill = Quarter)) + geom_bar(stat = "identity")




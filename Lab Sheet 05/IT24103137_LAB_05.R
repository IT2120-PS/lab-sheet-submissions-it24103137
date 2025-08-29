setwd("C:\\Users\\Ahamed\\Desktop\\IT24103137")
#Q1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header= TRUE)
head(Delivery_Times)

#Q2
Delivery_Times$Delivery_Time_.minutes. <- as.numeric(Delivery_Times$Delivery_Time_.minutes.)
breaks <- seq(20,70,length.out = 10)

hist(Delivery_Times$Delivery_Time_.minutes.,
     breaks = breaks,
     right=TRUE,
     main ="Histogram of Delivery Times",
     xlab = "Delivery Times(minutes)",
     ylab = "Frequency",
     col = "lightblue",
     border ="black")

#Q3
#Its rises at first and then falls after the middle,which means it symmetrical.

#Q4
hist_data <- hist(Delivery_Times$Delivery_Time_.minutes.,
                  breaks =breaks,
                  plot = FALSE)
cum_freq <- cumsum(hist_data$counts)

plot(hist_data$breaks[-1],cum_freq,
     type="o",
     main="Cumulative Frequency polygon (Ogive)",
     xlab = "Delivery Times(minutes",
     ylab = "Cumulative Frequency",
     col = "red")
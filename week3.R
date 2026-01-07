#week3 exercise
#laod the dataset
AirPassengers

?AirPassengers
#vertify the dataset
class(AirPassengers)
View(AirPassengers)
#convert the dataset to dataframe
ap_df = data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

plot(AirPassengers)
  
plot(AirPassengers,
     type ='l',
     lwd = 2,
     main="Air passemgers analysis",
       xlab="year",
       ylab="count of air passengers",
       labels=TRUE,
       col="blue",)
points(AirPassengers,
     type ='o',
     pch = 17 ,
     col = "red")

grid()


# Load ggplot2 library
library(ggplot2)

# Histogram of Air Passengers using ggplot2
ggplot(ap_df, aes(x = year , y  = passengers)) +
  geom_line(
    color = "black",
    linewidth = 0
  ) +
  labs(
    title = "analysis of Air Passengers",
    caption = "using air passengers dataset",
    subtitle = "from 1940-1960" ,
    x = "years",
    y = "Number of Passengers"
  ) +
  geom_point(color = 'blue') +
  geom_smooth(se = FALSE , color = 'orange')
  theme_linedraw()



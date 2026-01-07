#week2 exercise

# Load the built-in dataset
data(airquality)

# Check the class of the dataset
class(airquality)

# Load ggplot2 library
library(ggplot2)

# Histogram of Temperature using ggplot2
ggplot(airquality, aes(x = Temp)) +
  geom_histogram(
    bins = 10 ,
    fill = "yellow",
    color = "black"
  ) +
  labs(
    title = "Distribution of Temperature in Air Quality Dataset",
    x = "Temperature",
    y = "Frequency"
  ) +
  theme_light()

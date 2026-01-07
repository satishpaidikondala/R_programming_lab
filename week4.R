iris
?iris

class(iris)
View(iris)
# Load ggplot2 library
library(ggplot2)

# Load and verify dataset
data("iris")
class(iris)
print(head(iris))  

# Bar plot for Species distribution
plot <- ggplot(iris, aes(x = Species)) +
  geom_bar(
    fill = "yellow",
    color = "black"
  ) +
  labs(
    title = "Distribution of Species in Iris Dataset",
    x = "Species",
    y = "Frequency"
  ) +
  theme_light()




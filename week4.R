#week4 exercise

# load the dataset

data(iris)
?iris


###  Inspect the data

head(iris)
str(iris)
View(iris)

class(iris)

# VERY BASIC BAR CHAT 
# Count of each specie  

barplot()

#LABELED bar chart

barplot(
  table(iris$Species),
  main = "Count of Iris Species",
  xlab = "Species",
  ylab = "No of flowers"
)

# BAR CHART FROM AGGREGATED DATA (Base R)

#Mean Sepal Length Per Species
mean_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)


barplot(
  mean_sepal,
  col = 'violet',
  main = "Average Sepal Length by Species",
  ylab = "Mean Sepal Length"
)


# GROUPED(Clustered ) BAR CHART( Base R)

group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length, iris$Species, mean),
  Petal = tapply(iris$Petal.Length, iris$Species, mean)
)

group_means

group_means1 <- rbind(
  Sepal_length = tapply(iris$Sepal.Length, iris$Species, mean),
  Petal_length = tapply(iris$Petal.Length, iris$Species, mean),
  Sepal_width = tapply(iris$Sepal.Width, iris$Species, mean),
  Petal_width = tapply(iris$Petal.Width, iris$Species, mean)
)

group_means1

barplot(
  group_means,
  beside = TRUE,
  col = c("pink","blue"),
  legend.text = TRUE,
  main = 'Grouped Bar Chart: SEPAL VS PETAL length'
)



# STACKED BAR CHART( bASE r)

barplot(
  group_means1,
  beside = FALSE,
  col = c('pink','black','blue','green'),
  legend.text = TRUE,
  main = "Stacked Bar Chart: Sepal Vs Petal Length"
)
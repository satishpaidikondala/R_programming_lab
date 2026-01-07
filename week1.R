# week1 exercise

# Accesing information about the dataset
?VADeaths

# Checking the type of the Dataset
class(VADeaths)


# Accessing help for unknown functions or classes
help(class)

# Converting given dataset into DataFrame
va_df <- as.data.frame(VADeaths)

# Checking to confirm if the dataset is changed to Dataframe
class(va_df)

# Creating a view of the Dataset in the form of table
View(va_df)

# Creating a new column in the dataset
va_df$AgeGroups <- row.names(VADeaths)
View(va_df)

# Changing the data into "Long" format using "reshape" function
va_long = reshape(va_df,
                  direction = "long",
                  varying = colnames(VADeaths),
                  v.names = "DeathRate",
                  timevar = "Population",
                  times = colnames(VADeaths)
)
View(va_long)

# Creating histogram of Death Rate
hist(va_long$DeathRate)
help(hist)



hist(va_long$DeathRate,
     main="Basic histogram of VA Deathrates",
     xlab="VA Deathrates",
     ylab="Frequency",
     labels=TRUE,
     col="green",
     border="red")
help(hist)
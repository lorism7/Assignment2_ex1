# Assignment 2 Exercise 1 

# Define a function to standardize the numeric columns of a dataset
standardize_data <- function(data) {
  numeric_columns <- sapply(data, is.numeric)
  data[, numeric_columns] <- scale(data[, numeric_columns])
  return(data)
}

# Test the standardize_data function on the mtcars dataset
data(mtcars)
standardized_mtcars <- standardize_data(mtcars)

# Display the first few rows of the standardized dataset
head(standardized_mtcars)
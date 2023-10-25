# Assignment 2 Exercise 1 

# Define a function to perform different data transfromations
transform_data <- function(data, transformation_type = "standardize") {
  numeric_columns <- sapply(data, is.numeric)
  if (transformation_type == "standardize") {
    data[, numeric_columns] <- scale(data[, numeric_columns])
  } else if (transformation_type == "log_transform") {
    data[, numeric_columns] <- log(data[, numeric_columns] + 1) # Adding 1 to avoid log(0)
  }
  
  return(data)
}

# Test the transform_data function on the mtcars dataset with different transformations
data(mtcars)

# Standardize the data
standardized_mtcars <- transform_data(mtcars, transformation_type = "standardize")
head(standardized_mtcars)

# Log-transform the data
log_transformed_mtcars <- transform_data(mtcars, transformation_type = "log_transform")
head(log_transformed_mtcars)
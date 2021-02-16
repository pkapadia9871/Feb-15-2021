#Test Model:
#Make a function to take test data CSV input, 
#apply train model on it and make predictions on test data.


test_func <- function(test_csv = "Test50.csv")
{
  #Load the model
  train_model <- load("TrainModel.RData")

  #Test data
  test_data = read.csv(test_csv, 
                       header = TRUE, 
                       sep = ",")


  #Predict the values using train model on test data:
  y = predict(train_model, test_data, type = "response")

  #Convert/classify those responses in terms of 0 and 1.
  #These are the corresponding predictions.
  y_test = ifelse(y > 0.5, 1, 0)

  #Output predicted values
  return (y_test)

}

y_test = test_func()

y_test

#Define function to train the model, return it and save it.

train_func <- function(train_csv = "Training50.csv")
{
  #Train data set

  train_data = read.csv(train_csv, 
                      header = TRUE, 
                      sep = ",")

  #Pick 6 variables as predictors.
  #The response will be Creditability.
  #Use logistic regression as the response is binary.

  train_model = glm(
                  Creditability ~ Duration.of.Credit..month.
                  + Credit.Amount
                  + Length.of.current.employment
                  + Instalment.per.cent
                  + Age..years.
                  + No.of.dependents, 
                  data = train_data, 
                  family = binomial
                  )
  return (train_model)
  
}

train_model = train_func()

#Save the model.

save(train_model, file = "TrainModel.RData")


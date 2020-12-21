# Ensemble-Methods-with-Ames-Housing-dataset

1) Trained a Lasso Linear Regression model using “glmnet” and “caret” to predict SalePrice. Used 10 fold cross validation and tuned the lambda parameter.

2) Quantified predictions on test data and computed Root Mean Squared Error (RMSE) for the predictions.

3) Trained a Ridge Linear Regression model using 10 fold cross validation and tuned lambda as done for Lasso and computed the RMSE of the model on test data.

4) Trained an Elastic Net Linear Regression model using 10 fold cross validation and tuned lambda as done before. Tuned alpha to be a sequence of 10 values between 0 and 1, that is: 0,0.1,0.2,….1. Computed the RMSE of the tuned model on test data.

5) Used Caret package with “rf” method to train a random forest model on training data to predict the SalePrice.

6) Used 10-fold cross validation and let caret auto-tune the model. Use the model to predict the SalePrice for test data and computed RMSE.

7) Used caret’s varImp function to get the variable importance for random forest model. Compared that with coefficient of the LASSO model.

8) Used Caret package with “gbm” method to train a Gradient Boosted Tree model on the training data. Since it's similar to Random Forest, didn't need to scale and/or encode the categorical variables. Used 10 fold cross validation and let caret auto-tune the model. 

9) Used “resamples” method to compare the cross validation RMSE of the five models created above (LASSO, RIDGE, elastic net, randomforest, and gbm).

10) Created a Neural Network Model;
Used two hidden layers to predict the SalePrice. Used the training and validation set created above. Added a drop out layer after each hidden layer to regularize neural network model. Used tfruns package to tune your hyper-parameters including the drop out factors. You should include two flags for the drop out factors, one for each hidden layer. 

11) Used view_run to look at the best model. Determined what hyper-parameter combination is used in the best model.

12) Used all of the training data to train a model with the best combination of hyper-parameters found in the previous step.

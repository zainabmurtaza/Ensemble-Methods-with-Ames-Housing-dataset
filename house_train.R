library(keras)

flags_ <- flags(
  flag_numeric("nodes_hlayer1", 20),
  flag_numeric("nodes_hlayer2", 10),
  flag_numeric("batch_size", 10),
  flag_string("activation", "relu"),
  flag_numeric("learning_rate", 0.01),
  flag_numeric("epochs", 50),
  flag_numeric("dropout1", 0.2),
  flag_numeric("dropout2", 0.2)
)

model <- keras_model_sequential()

model %>%
  layer_dense(units = 900, activation = flags_$activation, input_shape = dim(data_nn_train)[2]) %>%
  layer_dense(units = flags_$nodes_hlayer1, activation = flags_$activation) %>%
  layer_dropout(flags_$dropout1) %>%
  layer_dense(units = flags_$nodes_hlayer2, activation = flags_$activation) %>%
  layer_dropout(flags_$dropout2) %>%
  layer_dense(units = 1)

model %>%
  compile(optimizer = optimizer_adam(lr = flags_$learning_rate), loss = 'mse')

set.seed(123)

model %>%
  fit(as.matrix(data_nn_train), as.matrix(data_nn_train_y), batch_size = flags_$batch_size, epochs = flags_$epochs,
      validation_data = list(as.matrix(data_nn_validation), as.matrix(data_nn_validation_y)))

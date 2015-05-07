complete <- function(directory, id = 1:332){
  files_list = file.names(directory, full.names = TRUE)
  data = data.frame()
  no_of_files = length(id)
  nobs = vector(,no_of_files)
  counter = 1
  for(file in id){
    counter = counter + 1
    data = read.csv(file)
    no_Rows = nrow(data)
    complete_count = data[complete.cases(data),]
    nobs[counter] <- complete_count
    }
  results <- data.frame(id, nobs)
}  
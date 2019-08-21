#' Using the function Load questionnaire from koboquest with fake data
#'
#' @param questions.file Path to your questionnaire csv file as character.
#' @param choices.file Path to your choices csv file as character.
#' @param choices.label.column.to.use Choices label column to be used as character.
#' @return Loaded questionnaire
#' @examples
#' load_questionnaire_without_data("questionnaire_file.csv", "choices_file.csv", "label::Arabic",)
load_questionnaire_without_data<-function(questions.file, choices.file, choices.label.column.to.use = NULL){
  raw_questionnaire<-read.csv(questions.file)
  raw_choices<-read.csv(choices.file)
  data_str<-matrix(NA,0,length(raw_questionnaire$name))
  colnames(data_str)<-raw_questionnaire$name
  data_str<-as.data.frame(data_str)
  loaded_questionnaire<-koboquest::load_questionnaire(data = data_str, questions = questions.file, choices = choices.file, choices.label.column.to.use = choices.label.column.to.use)
  return(loaded_questionnaire)
}

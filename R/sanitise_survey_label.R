#' Rename the header used in the questonnaire file to label
#'
#' @param original.label Name of the survey header to use.
#' @param survey.names names of all columns.
sanitise_survey_label <- function(original.label, survey.names){
  original.label <- sub("::", "..", original.label)
  survey.names <- sub(original.label, "label", survey.names)
  return(survey.names)
}

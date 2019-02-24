#' Rename the header used in the questonnaire file to constraint.message
#'
#' @param original.label Name of the survey header to use.
#' @param survey.names names of all columns.
sanitise_constraint_message_label <- function(original.label, survey.names){
  original.label <- sub("::", "..", original.label)
  survey.names <- sub(original.label, "constraint.message", survey.names)
  return(survey.names)
}

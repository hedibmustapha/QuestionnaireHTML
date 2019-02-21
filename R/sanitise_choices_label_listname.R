#' Rename the header used in the choices file to label
#'
#' @param original.label Name of the survey header to use.
#' @param choices.names names of all columns.
sanitise_choices_label_listname <- function(original.label,choices.names){
  choices.names <- sub("^list[\\._]name$", "list_name", choices.names)
  original.label <- sub("::", "..", original.label)
  choices.names <- sub(original.label, "label", choices.names)
  return(choices.names)
}

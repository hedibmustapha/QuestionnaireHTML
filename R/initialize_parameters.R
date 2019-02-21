#' initialize a list of parameters
#'
#' @param title Name of your questionnaire as character.
#' @param survey.file Path to your questionnaire csv file as character.
#' @param choices.file Path to your choices csv file as character.
#' @param choices.label Choices label column to be used as character.
#' @param survey.label questionnaire label column to be used as character.
#' @param right.to.left Type of the questionnaire writing system (TRUE/FALSE).
#' @param special.characters If the text contains non latin characters, specify the language used.
#' @return list of 4 objects.
#' @examples
#' initialize_parameters("Area Based Assessment 2019", "questionnaire_file.csv", "choices_file.csv", "label::Arabic",
#' "label::Arabic", TRUE, "arabic")
#'
#' initialize_parameters("JMMI January round", "questionnaire_file.csv", "choices_file.csv", "label",
#'"label", FALSE, "")
#'@export
initialize_parameters <-function(title,survey.file,choices.file,choices.label,survey.label,right.to.left,special.characters){

    # load inputs
    if(!file.exists(survey.file)){
      stop(paste("Survey csv file not found in path",survey.file))
    }

  if(!file.exists(choices.file)){
    stop(paste("Choices file not found in path",choices.file))
  }

   Sys.setlocale("LC_ALL",special.characters)

    survey <- read.csv(survey.file)
    choices <- read.csv(choices.file)

    names(survey) <- sanitise_survey_label(survey.label,names(survey))
    names(choices) <- sanitise_choices_label_listname(choices.label,names(choices))


    q <- load_questionnaire_without_data(questions.file = survey.file,
                                         choices.file = choices.file,
                                         choices.label.column.to.use = choices.label
    )

  return(list(q=q,
         survey=survey,
         choices=choices,
         right.to.left=right.to.left,
         title=title))

}


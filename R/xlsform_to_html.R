#' Map results to an output template
#'
#' @param x list of parameters (created with initialize_parameters)
#' @param dir the directory in which to save the output file (absolute path or relative to current working directory)
#' @param filename the name of the file. must end in '.html'
#' @examples
#' xlsform_to_html(list_parameters, "./output", "questionnaire.html")
#' @export
xlsform_to_html <- function(x, dir, filename) {

      template <- system.file("questionnaire.rmd",
                  package = "QuestionnaireHTML")
  render_environment <- new.env()

  render_environment$x <- x
  rmarkdown::render(
    template,
    output_file = filename,
    output_dir = dir,
    intermediates_dir = dir,
    envir = render_environment,
    knit_root_dir = getwd()
  )

}

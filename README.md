# QuestionnaireHTML
## Download and load the QuestionnaireHTML library
* To download the library from Guithub:  

`remotes::install_github("hedibmustapha/QuestionnaireHTML",build_opts = c())`  
* To load the library:  
`library("QuestionnaireHTML")`

## Your inputs
Place your survey and choices csv files under the file `input`. Please note that if you are using multiple languages for your form, you need to move the column label of your desired output language before the others in your *survey file*.  
**Example 1** : If we want our output to be an *English*

| type  | name | label::English | label::Arabic |
| ---|---|---|---|
|   |   || |
|   |   || |
  
**Example 2** : If we want our output to be an *Arabic*  

| type  | name | label::Arabic | label::English |
| ---|---|---|---|
|   |   || |
|   |   || |

## Quick start
**Run the function questionnaire_to_html()**  

`questionnaire_to_html(survey.file, choices.file, choices.label, survey.label, output.dir = "./",output.filename = "questionnaire.html", title = "", right.to.left = FALSE, special.characters ="")`  

- `survey.file`   Path to your questionnaire csv file as character.  
- `choices.file`  Path to your choices csv file as character.  
- `choices.label` Choices label column to be used as character.  
- `survey.label` questionnaire label column to be used as character.
- `constraint.label` sidenote about any constraint related to a question.
- `output.dir`the directory in which to save the output file (absolute path or relative to current working directory).
- `output.filename` the name of the file. must end in '.html'   
- `title` Name of your questionnaire as character.  
- `right.to.left` Type of the questionnaire writing system (TRUE/FALSE).
- `special.characters` If the text contains non latin characters, specify the language used.  

  
  
**Example 1**  
questionnaire_to_html("./input/questionnaire_file.csv", "./input/choices_file.csv", "label::Arabic",
"label::Arabic", "constraint_message::Arabic", "./output", "survey.html", "Area Based Assessment 2019", TRUE, "arabic")
  
  
**Example 2**  
questionnaire_to_html("./input/questionnaire_file.csv", "./input/choices_file.csv", "label",
"label", "./", "questionnaire.html", "Area Based Assessment 2019", FALSE, "")    

**Quickstart youtube video**   
[Please Click here to access the Youtube Video](https://youtu.be/c4BZftyJ5EI)

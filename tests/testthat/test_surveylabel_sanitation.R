context(" Survey label sanitation")

test_that("The survey language column label::[language] should be rename it label", {

  expect_equal(sanitise_survey_label("label::English", c("type","name","label::English","required","relevant")),
               c("type","name","label","required","relevant"))

  expect_equal(sanitise_survey_label("label::Arabic (ar)", c("type","name","label::Arabic (ar)","required","relevant")),
               c("type","name","label","required","relevant"))
  })

context(" choices listname and label sanitation")

test_that("The choices language column label::[language] should be rename it to label and listname to list_name", {

  expect_equal(sanitise_choices_label_listname("label::English", c("list.name","name","label::English")),
               c("list_name","name","label"))

  expect_equal(sanitise_choices_label_listname("label::English (en)", c("list name","name","label::English (en)")),
               c("list_name","name","label"))
})

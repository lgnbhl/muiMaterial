test_that("TextareaAutosize() returns shiny.tag, correct name and value", {
  expect_equal(class(TextareaAutosize()), "shiny.tag")
  expect_equal(environment(TextareaAutosize()[["children"]][[2]])[["data"]][["name"]], "TextareaAutosize")
  expect_equal(environment(TextareaAutosize("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

test_that("TextareaAutosize() returns shiny.tag, correct name and value", {
  expect_true(inherits(TextareaAutosize(), "shiny.tag"))
  expect_equal(react_name(TextareaAutosize()), "TextareaAutosize")
  expect_equal(react_props(TextareaAutosize("Test"))[["children"]], "Test")
})

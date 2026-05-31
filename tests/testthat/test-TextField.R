test_that("TextField() returns shiny.tag, correct name and value", {
  expect_true(inherits(TextField(), "shiny.tag"))
  expect_equal(react_name(TextField()), "TextField")
  expect_equal(react_props(TextField("Test"))[["children"]], "Test")
})

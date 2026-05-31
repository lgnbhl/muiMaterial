test_that("Stack() returns shiny.tag, correct name and value", {
  expect_true(inherits(Stack(), "shiny.tag"))
  expect_equal(react_name(Stack()), "Stack")
  expect_equal(react_props(Stack("Test"))[["children"]], "Test")
})

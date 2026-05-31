test_that("PigmentStack() returns shiny.tag, correct name and value", {
  expect_true(inherits(PigmentStack(), "shiny.tag"))
  expect_equal(react_name(PigmentStack()), "PigmentStack")
  expect_equal(react_props(PigmentStack("Test"))[["children"]], "Test")
})

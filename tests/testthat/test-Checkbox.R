test_that("Checkbox() returns shiny.tag, correct name and value", {
  expect_true(inherits(Checkbox(), "shiny.tag"))
  expect_equal(react_name(Checkbox()), "Checkbox")
  expect_equal(react_props(Checkbox("Test"))[["children"]], "Test")
})

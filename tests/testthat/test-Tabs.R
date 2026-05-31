test_that("Tabs() returns shiny.tag, correct name and value", {
  expect_true(inherits(Tabs(), "shiny.tag"))
  expect_equal(react_name(Tabs()), "Tabs")
  expect_equal(react_props(Tabs("Test"))[["children"]], "Test")
})

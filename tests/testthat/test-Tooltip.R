test_that("Tooltip() returns shiny.tag, correct name and value", {
  expect_true(inherits(Tooltip(), "shiny.tag"))
  expect_equal(react_name(Tooltip()), "Tooltip")
  expect_equal(react_props(Tooltip("Test"))[["children"]], "Test")
})

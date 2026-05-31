test_that("Collapse() returns shiny.tag, correct name and value", {
  expect_true(inherits(Collapse(), "shiny.tag"))
  expect_equal(react_name(Collapse()), "Collapse")
  expect_equal(react_props(Collapse("Test"))[["children"]], "Test")
})

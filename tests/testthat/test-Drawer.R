test_that("Drawer() returns shiny.tag, correct name and value", {
  expect_true(inherits(Drawer(), "shiny.tag"))
  expect_equal(react_name(Drawer()), "Drawer")
  expect_equal(react_props(Drawer("Test"))[["children"]], "Test")
})

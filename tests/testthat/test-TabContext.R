test_that("TabContext() returns shiny.tag, correct name and value", {
  expect_true(inherits(TabContext(), "shiny.tag"))
  expect_equal(react_name(TabContext()), "TabContext")
  expect_equal(react_props(TabContext("Test"))[["children"]], "Test")
})

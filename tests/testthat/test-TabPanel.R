test_that("TabPanel() returns shiny.tag, correct name and value", {
  expect_true(inherits(TabPanel(), "shiny.tag"))
  expect_equal(react_name(TabPanel()), "TabPanel")
  expect_equal(react_props(TabPanel("Test"))[["children"]], "Test")
})

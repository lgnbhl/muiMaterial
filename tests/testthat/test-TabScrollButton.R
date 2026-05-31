test_that("TabScrollButton() returns shiny.tag, correct name and value", {
  expect_true(inherits(TabScrollButton(), "shiny.tag"))
  expect_equal(react_name(TabScrollButton()), "TabScrollButton")
  expect_equal(react_props(TabScrollButton("Test"))[["children"]], "Test")
})

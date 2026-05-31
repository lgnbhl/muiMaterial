test_that("TabList() returns shiny.tag, correct name and value", {
  expect_true(inherits(TabList(), "shiny.tag"))
  expect_equal(react_name(TabList()), "TabList")
  expect_equal(react_props(TabList("Test"))[["children"]], "Test")
})

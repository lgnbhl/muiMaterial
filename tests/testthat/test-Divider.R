test_that("Divider() returns shiny.tag, correct name and value", {
  expect_true(inherits(Divider(), "shiny.tag"))
  expect_equal(react_name(Divider()), "Divider")
  expect_equal(react_props(Divider("Test"))[["children"]], "Test")
})

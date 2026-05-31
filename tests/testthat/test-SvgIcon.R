test_that("SvgIcon() returns shiny.tag, correct name and value", {
  expect_true(inherits(SvgIcon(), "shiny.tag"))
  expect_equal(react_name(SvgIcon()), "SvgIcon")
  expect_equal(react_props(SvgIcon("Test"))[["children"]], "Test")
})

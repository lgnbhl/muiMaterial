test_that("NativeSelect() returns shiny.tag, correct name and value", {
  expect_true(inherits(NativeSelect(), "shiny.tag"))
  expect_equal(react_name(NativeSelect()), "NativeSelect")
  expect_equal(react_props(NativeSelect("Test"))[["children"]], "Test")
})

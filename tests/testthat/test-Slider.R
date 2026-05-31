test_that("Slider() returns shiny.tag, correct name and value", {
  expect_true(inherits(Slider(), "shiny.tag"))
  expect_equal(react_name(Slider()), "Slider")
  expect_equal(react_props(Slider("Test"))[["children"]], "Test")
})

test_that("Popper() returns shiny.tag, correct name and value", {
  expect_true(inherits(Popper(), "shiny.tag"))
  expect_equal(react_name(Popper()), "Popper")
  expect_equal(react_props(Popper("Test"))[["children"]], "Test")
})

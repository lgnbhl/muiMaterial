test_that("Accordion() returns shiny.tag, correct name and value", {
  expect_true(inherits(Accordion(), "shiny.tag"))
  expect_equal(react_name(Accordion()), "Accordion")
  expect_equal(react_props(Accordion("Test"))[["children"]], "Test")
})

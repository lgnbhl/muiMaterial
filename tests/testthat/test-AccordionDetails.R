test_that("AccordionDetails() returns shiny.tag, correct name and value", {
  expect_true(inherits(AccordionDetails(), "shiny.tag"))
  expect_equal(react_name(AccordionDetails()), "AccordionDetails")
  expect_equal(react_props(AccordionDetails("Test"))[["children"]], "Test")
})

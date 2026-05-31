test_that("AccordionSummary() returns shiny.tag, correct name and value", {
  expect_true(inherits(AccordionSummary(), "shiny.tag"))
  expect_equal(react_name(AccordionSummary()), "AccordionSummary")
  expect_equal(react_props(AccordionSummary("Test"))[["children"]], "Test")
})

test_that("AccordionActions() returns shiny.tag, correct name and value", {
  expect_true(inherits(AccordionActions(), "shiny.tag"))
  expect_equal(react_name(AccordionActions()), "AccordionActions")
  expect_equal(react_props(AccordionActions("Test"))[["children"]], "Test")
})

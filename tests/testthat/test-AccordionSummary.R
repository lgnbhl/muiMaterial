test_that("AccordionSummary() returns shiny.tag, correct name and value", {
  expect_true(inherits(AccordionSummary(), "shiny.tag"))
  expect_equal(environment(AccordionSummary()[["children"]][[2]])[["data"]][["name"]], "AccordionSummary")
  expect_equal(environment(AccordionSummary("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

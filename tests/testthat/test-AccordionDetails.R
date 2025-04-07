test_that("AccordionDetails() returns shiny.tag, correct name and value", {
  expect_equal(class(AccordionDetails()), "shiny.tag")
  expect_equal(environment(AccordionDetails()[["children"]][[2]])[["data"]][["name"]], "AccordionDetails")
  expect_equal(environment(AccordionDetails("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

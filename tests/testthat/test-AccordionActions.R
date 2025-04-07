test_that("AccordionActions() returns shiny.tag, correct name and value", {
  expect_equal(class(AccordionActions()), "shiny.tag")
  expect_equal(environment(AccordionActions()[["children"]][[2]])[["data"]][["name"]], "AccordionActions")
  expect_equal(environment(AccordionActions("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

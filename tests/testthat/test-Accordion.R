test_that("Accordion() returns shiny.tag, correct name and value", {
  expect_equal(class(Accordion()), "shiny.tag")
  expect_equal(environment(Accordion()[["children"]][[2]])[["data"]][["name"]], "Accordion")
  expect_equal(environment(Accordion("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

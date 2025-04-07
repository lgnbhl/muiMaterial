test_that("Slide() returns shiny.tag, correct name and value", {
  expect_equal(class(Slide()), "shiny.tag")
  expect_equal(environment(Slide()[["children"]][[2]])[["data"]][["name"]], "Slide")
  expect_equal(environment(Slide("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

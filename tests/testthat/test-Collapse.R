test_that("Collapse() returns shiny.tag, correct name and value", {
  expect_equal(class(Collapse()), "shiny.tag")
  expect_equal(environment(Collapse()[["children"]][[2]])[["data"]][["name"]], "Collapse")
  expect_equal(environment(Collapse("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

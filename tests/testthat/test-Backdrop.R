test_that("Backdrop() returns shiny.tag, correct name and value", {
  expect_equal(class(Backdrop()), "shiny.tag")
  expect_equal(environment(Backdrop()[["children"]][[2]])[["data"]][["name"]], "Backdrop")
  expect_equal(environment(Backdrop("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

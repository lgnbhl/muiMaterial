test_that("Popper() returns shiny.tag, correct name and value", {
  expect_equal(class(Popper()), "shiny.tag")
  expect_equal(environment(Popper()[["children"]][[2]])[["data"]][["name"]], "Popper")
  expect_equal(environment(Popper("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

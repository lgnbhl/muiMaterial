test_that("Autocomplete() returns shiny.tag, correct name and value", {
  expect_equal(class(Autocomplete()), "shiny.tag")
  expect_equal(environment(Autocomplete()[["children"]][[2]])[["data"]][["name"]], "Autocomplete")
  expect_equal(environment(Autocomplete("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

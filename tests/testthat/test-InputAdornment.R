test_that("InputAdornment() returns shiny.tag, correct name and value", {
  expect_equal(class(InputAdornment()), "shiny.tag")
  expect_equal(environment(InputAdornment()[["children"]][[2]])[["data"]][["name"]], "InputAdornment")
  expect_equal(environment(InputAdornment("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

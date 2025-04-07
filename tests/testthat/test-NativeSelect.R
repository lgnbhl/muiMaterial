test_that("NativeSelect() returns shiny.tag, correct name and value", {
  expect_equal(class(NativeSelect()), "shiny.tag")
  expect_equal(environment(NativeSelect()[["children"]][[2]])[["data"]][["name"]], "NativeSelect")
  expect_equal(environment(NativeSelect("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

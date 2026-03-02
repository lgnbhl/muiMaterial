test_that("NativeSelect() returns shiny.tag, correct name and value", {
  expect_true(inherits(NativeSelect(), "shiny.tag"))
  expect_equal(environment(NativeSelect()[["children"]][[2]])[["data"]][["name"]], "NativeSelect")
  expect_equal(environment(NativeSelect("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})

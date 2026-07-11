test_that("muiMaterialExample() lists available examples when called without a name", {
  available <- muiMaterialExample()
  expect_type(available, "character")
  expect_true(length(available) > 0)
  expect_true("showcase" %in% available)
})

test_that("muiMaterialExample() errors informatively on an unknown example", {
  expect_error(
    muiMaterialExample("no-such-example"),
    "Unknown example 'no-such-example'.*Available examples:"
  )
  expect_error(muiMaterialExample(123), "example")
})

test_that("muiMaterialDependency() is memoized and stable", {
  dep1 <- muiMaterialDependency()
  dep2 <- muiMaterialDependency()
  expect_identical(dep1, dep2)
  expect_s3_class(dep1, "html_dependency")
  expect_equal(dep1$name, "muiMaterial")
  expect_equal(
    dep1$version,
    as.character(utils::packageVersion("muiMaterial"))
  )
})

test_that("ScopedCssBaseline() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(ScopedCssBaseline(), "shiny.tag"))
            expect_equal(react_name(ScopedCssBaseline()), "ScopedCssBaseline")
            expect_equal(react_props(ScopedCssBaseline("Test"))[["children"]], "Test")
          })

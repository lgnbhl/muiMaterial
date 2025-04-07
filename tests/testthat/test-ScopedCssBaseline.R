test_that("ScopedCssBaseline() returns shiny.tag, correct name and value",
          {
            expect_equal(class(ScopedCssBaseline()), "shiny.tag")
            expect_equal(environment(ScopedCssBaseline()[["children"]][[2]])[["data"]][["name"]], "ScopedCssBaseline")
            expect_equal(environment(ScopedCssBaseline("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })

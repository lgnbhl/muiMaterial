test_that("TimelineSeparator() returns shiny.tag, correct name and value",
          {
            expect_equal(class(TimelineSeparator()), "shiny.tag")
            expect_equal(environment(TimelineSeparator()[["children"]][[2]])[["data"]][["name"]], "TimelineSeparator")
            expect_equal(environment(TimelineSeparator("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })

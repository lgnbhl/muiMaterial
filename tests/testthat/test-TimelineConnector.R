test_that("TimelineConnector() returns shiny.tag, correct name and value",
          {
            expect_equal(class(TimelineConnector()), "shiny.tag")
            expect_equal(environment(TimelineConnector()[["children"]][[2]])[["data"]][["name"]], "TimelineConnector")
            expect_equal(environment(TimelineConnector("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })

test_that("TimelineConnector() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(TimelineConnector(), "shiny.tag"))
            expect_equal(react_name(TimelineConnector()), "TimelineConnector")
            expect_equal(react_props(TimelineConnector("Test"))[["children"]], "Test")
          })

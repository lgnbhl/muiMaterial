test_that("TimelineSeparator() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(TimelineSeparator(), "shiny.tag"))
            expect_equal(react_name(TimelineSeparator()), "TimelineSeparator")
            expect_equal(react_props(TimelineSeparator("Test"))[["children"]], "Test")
          })

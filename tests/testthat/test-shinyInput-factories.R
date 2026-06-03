# Regression tests for the internal button() and input() factories in R/inputs.R
# that back the exported `*.shinyInput()` functions. The auto-generated
# test-<Component>.R files only exercise the plain component() form, so these
# guard the inputId/value forwarding and validation that those factories add.
# Payload accessors react_name() / react_props() live in helper-react.R.

# A scalar prop can cross the bridge raw or wrapped in a ReactData envelope
# (asProps does the latter when the element also has children). Accept both.
unwrap <- function(x) if (inherits(x, "ReactData")) x$value else x

# --- button() factory (Button.shinyInput, Dialog.shinyInput, ...) ------------

test_that("button() factory returns a muiMaterial shiny.tag with the right name", {
  tag <- Button.shinyInput("btn", "Click me")
  expect_true(inherits(tag, "muiMaterial"))
  expect_true(inherits(tag, "shiny.tag"))
  expect_equal(react_name(tag), "Button")
})

test_that("button() factory forwards inputId and extra props", {
  tag <- Button.shinyInput("btn", "Click me", variant = "contained")
  props <- react_props(tag)
  expect_equal(props[["inputId"]], "btn")
  expect_equal(props[["variant"]], "contained")
  expect_equal(unwrap(props[["children"]]), "Click me")
})

test_that("button() factory validates inputId", {
  expect_error(Button.shinyInput(123), "inputId")
  expect_error(Button.shinyInput(NULL), "inputId")
  expect_error(Button.shinyInput(c("a", "b")), "inputId")
})

test_that("button() factory wires several overlay surfaces to their components", {
  expect_equal(react_name(Dialog.shinyInput("d")), "Dialog")
  expect_equal(react_name(Menu.shinyInput("m")), "Menu")
  expect_equal(react_name(Snackbar.shinyInput("s")), "Snackbar")
})

# --- input() factory (Slider.shinyInput, Checkbox.shinyInput, ...) -----------

test_that("input() factory returns a muiMaterial shiny.tag with the right name", {
  tag <- Slider.shinyInput("s", value = 30)
  expect_true(inherits(tag, "muiMaterial"))
  expect_true(inherits(tag, "shiny.tag"))
  expect_equal(react_name(tag), "Slider")
})

test_that("input() factory forwards inputId, value and extra props", {
  tag <- Slider.shinyInput("s", value = 30, min = 0, max = 100)
  props <- react_props(tag)
  expect_equal(props[["inputId"]], "s")
  expect_equal(unwrap(props[["value"]]), 30)
  expect_equal(unwrap(props[["min"]]), 0)
  expect_equal(unwrap(props[["max"]]), 100)
})

test_that("input() factory leaves value NULL when not supplied (no defaultValue)", {
  expect_null(react_props(Slider.shinyInput("s"))[["value"]])
})

test_that("input() factory applies its defaultValue when value is omitted", {
  # Pagination.shinyInput is built with input('Pagination', defaultValue = 1).
  expect_equal(unwrap(react_props(Pagination.shinyInput("p"))[["value"]]), 1)
  # An explicit value overrides the default.
  expect_equal(unwrap(react_props(Pagination.shinyInput("p", value = 5))[["value"]]), 5)
})

test_that("input() factory validates inputId", {
  expect_error(Slider.shinyInput(123), "inputId")
  expect_error(Checkbox.shinyInput(NULL), "inputId")
})

# --- input-surface completeness (BottomNavigation, FilledInput, NativeSelect) -

test_that("BottomNavigation.shinyInput is wired as an input", {
  tag <- BottomNavigation.shinyInput("nav", value = "home")
  expect_true(inherits(tag, "muiMaterial"))
  expect_equal(react_name(tag), "BottomNavigation")
  props <- react_props(tag)
  expect_equal(props[["inputId"]], "nav")
  expect_equal(unwrap(props[["value"]]), "home")
  expect_error(BottomNavigation.shinyInput(123), "inputId")
})

test_that("FilledInput.shinyInput is wired as an input", {
  tag <- FilledInput.shinyInput("fi", value = "hi")
  expect_true(inherits(tag, "muiMaterial"))
  expect_equal(react_name(tag), "FilledInput")
  expect_equal(unwrap(react_props(tag)[["value"]]), "hi")
  expect_error(FilledInput.shinyInput(NULL), "inputId")
})

test_that("NativeSelect.shinyInput is wired as an input", {
  tag <- NativeSelect.shinyInput("ns", value = "a")
  expect_true(inherits(tag, "muiMaterial"))
  expect_equal(react_name(tag), "NativeSelect")
  expect_equal(unwrap(react_props(tag)[["value"]]), "a")
  expect_error(NativeSelect.shinyInput(123), "inputId")
})

test_that("update*.shinyInput companions are exported for the new inputs", {
  expect_true(is.function(updateBottomNavigation.shinyInput))
  expect_true(is.function(updateFilledInput.shinyInput))
  expect_true(is.function(updateNativeSelect.shinyInput))
})

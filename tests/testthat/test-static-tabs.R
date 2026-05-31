# Payload accessors live in helper-react.R: react_data() / react_props().

test_that("TabContext.static() returns a muiMaterial shiny.tag with the right name", {
  tag <- TabContext.static(defaultValue = "one")
  expect_true(inherits(tag, "muiMaterial"))
  expect_true(inherits(tag, "shiny.tag"))
  expect_equal(react_name(tag), "MuiStaticTabContext")
})

# A NULL-valued prop carries no information across the R->JS bridge, so the
# JS side treats it as "not supplied". Assert on the value that actually
# crosses, not merely on the presence of the (always-present) key name.
test_that("uncontrolled mode forwards defaultValue and leaves value NULL", {
  props <- react_props(TabContext.static(defaultValue = "one"))
  expect_equal(props[["defaultValue"]], "one")
  expect_null(props[["value"]])
})

test_that("controlled mode forwards value and leaves defaultValue NULL", {
  props <- react_props(TabContext.static(value = "one"))
  expect_equal(props[["value"]], "one")
  expect_null(props[["defaultValue"]])
})

test_that("neither value nor defaultValue leaves both NULL", {
  props <- react_props(TabContext.static())
  expect_null(props[["value"]])
  expect_null(props[["defaultValue"]])
})

test_that("unnamed child elements never positionally bind to value/defaultValue", {
  # Regression: when `value`/`defaultValue` were positional formals before
  # `...`, R argument matching (and asProps' handling of NULL named args
  # alongside unnamed children) swallowed the first unnamed child into
  # `value`, putting the bridge into spurious controlled mode and producing
  # a blank UI plus a "value without onChange" console warning.
  tag <- TabContext.static(
    defaultValue = "one",
    Box(TabList.static(Tab(label = "x", value = "one"))),
    TabPanel(value = "one", "content")
  )
  props <- react_props(tag)
  expect_null(props[["value"]])
  # asProps may wrap each value in a ReactData envelope when children are
  # present, so accept either the raw scalar or the {type:"raw", value:...}
  # form. The point is that "one" reaches JS, not a React element.
  dv <- props[["defaultValue"]]
  if (inherits(dv, "ReactData")) dv <- dv$value
  expect_equal(dv, "one")
})

test_that("TabList.static() returns a muiMaterial shiny.tag with the right name", {
  tag <- TabList.static()
  expect_true(inherits(tag, "muiMaterial"))
  expect_equal(react_name(tag), "MuiStaticTabList")
})

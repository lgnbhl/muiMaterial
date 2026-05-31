# TabContext

<https://mui.com/material-ui/api/tab-context/>

## Usage

``` r
TabContext(...)

TabContext.shinyInput(inputId, ..., value = defaultValue)

updateTabContext.shinyInput(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...
)

TabContext.static(..., value = NULL, defaultValue = NULL)
```

## Arguments

- ...:

  Child elements (typically a `Box` wrapping `TabList.static` and
  `TabPanel` components). `value` and `defaultValue` are accepted by
  name only – putting `...` first guarantees that an unnamed child
  element is never matched positionally into `value` / `defaultValue`.

- inputId:

  ID of the component.

- value:

  Controlled selected tab value. When supplied, the caller is the source
  of truth: the value is honored on every render and the wrapper never
  mutates it. Combine with an `onChange` (on `TabList.static` or on
  `TabContext.static`) that writes the new value back to wherever it
  lives. The tidiest binding needs no JavaScript: make the tab a URL
  path segment, link each `Tab` with `href` (e.g. `"#/overview"`), and
  read it back with
  `reactRouter::useParams(as = "value", selector = "tab")`. Use
  `useParams` (a scalar), not `useSearchParams`, which returns
  `getAll()`, an array that never matches a `TabPanel`'s string value.
  Other sources (a parent's state, a Shiny input) work too. Use either
  `value` or `defaultValue`, not both; the mode is fixed at the first
  render.

- session:

  Object passed as the \`session\` argument to Shiny server.

- defaultValue:

  Uncontrolled initial selected tab value. The wrapper owns the
  active-tab state and updates it on user clicks. This is the right
  choice for Quarto documents and static HTML, where no external state
  is involved.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- value `number| string`  
  Default is NA The value of the currently selected Tab.

- children `node`  
  Default is NA The content of the component.

## Note

`TabContext` is part of
[`@mui/lab`](https://mui.com/material-ui/about-the-lab/), which is
published on the MUI beta channel. Lab APIs may change in future minor
releases.

# Tabs

Tabs organize content into separate views where only one view is visible
at a time.

## Basic Usage

Use
[`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md),
[`TabList.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabList.md),
and
[`TabPanel()`](https://felixluginbuhl.com/muiMaterial/reference/TabPanel.md)
to create tabs. These are custom wrappers around
[`@mui/lab`](https://mui.com/material-ui/about-the-lab/) tab components
that manage tab state internally with `React.useState`, so they work
everywhere – in Shiny apps, Quarto documents, and plain R Markdown –
with no server logic required.

``` r

library(muiMaterial)

TabContext.static(
  defaultValue = "one",
  Box(
    sx = list(borderBottom = 1, borderColor = "divider"),
    TabList.static(
      Tab(label = "Item One", value = "one"),
      Tab(label = "Item Two", value = "two"),
      Tab(label = "Item Three", value = "three")
    )
  ),
  TabPanel(value = "one", "Content 1"),
  TabPanel(value = "two", "Content 2"),
  TabPanel(value = "three", "Content 3")
)
```

The `defaultValue` argument in
[`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md)
sets the initially selected tab and lets the wrapper manage switching
for you. Each `Tab` and `TabPanel` share a matching `value` string to
link headers to content.

### Quarto usage

In a Quarto document (`.qmd`), use the `.static` variants inside an R
code chunk. No server function or `runtime: shiny` is needed.

    ---
    title: "Tabs Example"
    format: html
    ---


    ``` r
    library(muiMaterial)

    TabContext.static(
      defaultValue = "one",
      Box(
        sx = list(borderBottom = 1, borderColor = "divider"),
        TabList.static(
          Tab(label = "Item One", value = "one"),
          Tab(label = "Item Two", value = "two"),
          Tab(label = "Item Three", value = "three")
        )
      ),
      TabPanel(value = "one", Typography("First tab content")),
      TabPanel(value = "two", Typography("Second tab content")),
      TabPanel(value = "three", Typography("Third tab content"))
    )
    ```


    ```{=html}
    <div class="react-container" data-react-id="kdcrprizswzfrkbqpkwn">
    <script class="react-data" type="application/json">{"type":"element","module":"@/muiMaterial","name":"MuiStaticTabContext","props":{"type":"object","value":{"defaultValue":{"type":"raw","value":"one"},"children":{"type":"array","value":[{"type":"element","module":"@mui/material","name":"Box","props":{"type":"object","value":{"sx":{"type":"raw","value":{"borderBottom":1,"borderColor":"divider"}},"children":{"type":"element","module":"@/muiMaterial","name":"MuiStaticTabList","props":{"type":"object","value":{"children":{"type":"array","value":[{"type":"element","module":"@mui/material","name":"Tab","props":{"type":"raw","value":{"label":"Item One","value":"one"}}},{"type":"element","module":"@mui/material","name":"Tab","props":{"type":"raw","value":{"label":"Item Two","value":"two"}}},{"type":"element","module":"@mui/material","name":"Tab","props":{"type":"raw","value":{"label":"Item Three","value":"three"}}}]}}}}}}},{"type":"element","module":"@mui/lab","name":"TabPanel","props":{"type":"object","value":{"value":{"type":"raw","value":"one"},"children":{"type":"element","module":"@mui/material","name":"Typography","props":{"type":"raw","value":{"children":"First tab content"}}}}}},{"type":"element","module":"@mui/lab","name":"TabPanel","props":{"type":"object","value":{"value":{"type":"raw","value":"two"},"children":{"type":"element","module":"@mui/material","name":"Typography","props":{"type":"raw","value":{"children":"Second tab content"}}}}}},{"type":"element","module":"@mui/lab","name":"TabPanel","props":{"type":"object","value":{"value":{"type":"raw","value":"three"},"children":{"type":"element","module":"@mui/material","name":"Typography","props":{"type":"raw","value":{"children":"Third tab content"}}}}}}]}}}}</script>
    <script>jsmodule['@/shiny.react'].findAndRenderReactData('kdcrprizswzfrkbqpkwn')</script>
    </div>
    ```

### Why `@mui/lab`?

MUI provides tab components in two packages:

- **`@mui/material`**: `Tabs` and `Tab` – base components that handle
  the tab header and selection state. Always controlled: requires a
  `value` prop and an `onChange` handler.
- **`@mui/lab`**: `TabContext`, `TabList`, and `TabPanel` – higher-level
  wrappers that add automatic coordination between tab headers and
  content panels.

The `.static` variants wrap `@mui/lab` components and add internal
`React.useState` management, which maps naturally to R’s declarative UI
model – you declare the tabs and their content, and the switching is
handled automatically.

## Controlled tabs (URL-bound and beyond)

[`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md)
follows the React `<input>` convention for who owns the active-tab
state:

- Pass **`defaultValue`** (or nothing) for *uncontrolled* tabs – the
  wrapper owns the state and updates it on click. This is the default
  shown above and the right choice for documents.
- Pass **`value`** for *controlled* tabs – you are the source of truth.
  The wrapper relays `value` through on every render and never changes
  it on its own. Combine it with an `onChange` (on
  [`TabList.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabList.md)
  or on
  [`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md))
  that writes the new value back to wherever it lives.

The mode is fixed at the first render; use one or the other, not both.

The headline use case is binding the active tab to the URL with
[reactRouter](https://felixluginbuhl.com/reactRouter/), so a tab
selection is bookmarkable and survives a reload. The tidiest way needs
**no JavaScript at all**: make the active tab a path segment
(`#/overview`, `#/details`), point each `Tab` at it with `href`, and
read it back with the R hook
[`useParams()`](https://felixluginbuhl.com/reactRouter/reference/useParams.html).

``` r

library(muiMaterial)
library(reactRouter)
library(htmltools)

RouterProvider(
  router = createHashRouter(
    Route(
      path    = "/",
      element = div(Outlet()),
      # Default tab. `redirect()` is a reactRouter helper -- no JS() needed.
      Route(index = TRUE, loader = redirect("/overview"), element = NULL),
      Route(
        path    = ":tab",   # the active tab lives in the URL path
        element = useParams(
          as       = "value",   # feed the `:tab` segment into TabContext's `value`
          selector = "tab",
          into     = TabContext.static(
            Box(
              sx = list(borderBottom = 1, borderColor = "divider"),
              TabList.static(
                # Each tab is just a link. Clicking it changes the URL,
                # which re-runs useParams() and selects the matching panel.
                Tab(label = "Overview", value = "overview", href = "#/overview"),
                Tab(label = "Details",  value = "details",  href = "#/details")
              )
            ),
            TabPanel(value = "overview", "Overview content"),
            TabPanel(value = "details",  "Details content")
          )
        )
      )
    )
  )
)
```

How it works, entirely in R:

- **`Tab(href = "#/overview")`** turns each tab into a hash link, so a
  click updates the URL on its own – no `onChange` handler to write the
  change back.
- **`useParams(as = "value", selector = "tab")`** reads the `:tab` path
  segment as a plain string and feeds it into the controlled `value`.
  (Use
  [`useParams()`](https://felixluginbuhl.com/reactRouter/reference/useParams.html)
  here, not
  [`useSearchParams()`](https://felixluginbuhl.com/reactRouter/reference/useSearchParams.html):
  the latter returns `getAll()`, an array like `["overview"]`, which
  never matches a `TabPanel`’s string `value`.)
- **`redirect("/overview")`** on the index route seeds a default so
  `value` is a defined string at first render – no infinite loop,
  because the target path `/overview` matches the `:tab` route, not the
  index.

> **Why a default matters.** In controlled mode the wrapper expects
> `value` to be a defined string at mount. The index
> [`redirect()`](https://felixluginbuhl.com/reactRouter/reference/redirect.html)
> guarantees the page always lands on a real tab. Without it, the first
> render has no value (no tab selected) and the first click flips the
> component from uncontrolled to controlled, triggering a one-time
> development `console.warn`. (If you genuinely want no external state,
> use the uncontrolled `defaultValue` form shown earlier instead.)

The same pattern coordinates tabs with any other external state: a
parent component, a second tab strip that must stay in sync, or a “next
step” button elsewhere on the page that advances the active tab. As long
as something feeds the `value` prop and a link (or handler) writes the
change back to the URL, the round-trip is fully controlled.

### Alternative: a query parameter instead of a path segment

If you prefer the tab to live in a query string (`#/?tab=overview`)
rather than a path segment – for instance, when the path is already used
for something else – read it back with a route `loader` and
[`useLoaderData()`](https://felixluginbuhl.com/reactRouter/reference/useLoaderData.html)
instead of
[`useParams()`](https://felixluginbuhl.com/reactRouter/reference/useParams.html).
This keeps the route structure flat at the cost of one short line of
JavaScript (the loader runs in the browser, not R):

``` r

tabs <- useLoaderData(
  as       = "value",   # inject the loader's `tab` field into TabContext's `value`
  selector = "tab",
  into     = TabContext.static(
    Box(
      sx = list(borderBottom = 1, borderColor = "divider"),
      TabList.static(
        Tab(label = "Overview", value = "overview", href = "#/?tab=overview"),
        Tab(label = "Details",  value = "details",  href = "#/?tab=details")
      )
    ),
    TabPanel(value = "overview", "Overview content"),
    TabPanel(value = "details",  "Details content")
  )
)

RouterProvider(
  router = createHashRouter(
    Route(
      path = "/",
      # Read ?tab= as a scalar string, defaulting to "overview". The loader
      # re-runs on every navigation, so each href click re-reads it.
      loader = JS("({ request }) =>
        ({ tab: new URL(request.url).searchParams.get('tab') || 'overview' })"),
      element = tabs
    )
  )
)
```

The `href` tabs and the `|| "overview"` default play the same roles as
before. The loader exists only because
[`useSearchParams()`](https://felixluginbuhl.com/reactRouter/reference/useSearchParams.html)
can’t return a scalar (it gives `getAll()`, an array);
`URLSearchParams.get()` inside the loader does. Prefer the path-segment
version above unless you specifically need a query parameter.

## Advanced: `.shinyInput` Variants

The `.shinyInput` variants
([`TabContext.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md),
[`TabList.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabList.md),
[`TabPanel.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabPanel.md))
expose the selected tab to the Shiny server as a reactive input. This is
useful when:

- **Server-side reactions to tab changes**: You need the server to know
  which tab is active – for example, to lazy-load expensive content,
  trigger data fetches, or log analytics only when a specific tab is
  viewed.
- **Programmatic tab switching**: The server can change the active tab
  via
  [`updateTabContext.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md)
  in response to other events (e.g., completing a form step, receiving a
  notification).
- **Conditional server logic**: You want
  `observeEvent(input$tabList, ...)` to run code when the user switches
  tabs, such as refreshing a plot or resetting a form.

``` r

library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  TabContext.shinyInput(
    inputId = "tabContext",
    value = "one",
    Box(
      sx = list(borderBottom = 1, borderColor = "divider"),
      TabList.shinyInput(
        inputId = "tabList",
        value = "one",
        Tab(label = "Item One", value = "one"),
        Tab(label = "Item Two", value = "two"),
        Tab(label = "Item Three", value = "three")
      )
    ),
    TabPanel.shinyInput(inputId = "panel1", value = "one", "Content 1"),
    TabPanel.shinyInput(inputId = "panel2", value = "two", "Content 2"),
    TabPanel.shinyInput(inputId = "panel3", value = "three", "Content 3")
  )
)

server <- function(input, output, session) {
  # Bridge TabList selection to TabContext
  observe({
    updateTabContext.shinyInput(
      inputId = "tabContext",
      value = input$tabList
    )
  })

  # React to tab changes on the server
  observeEvent(input$tabList, {
    message("User switched to tab: ", input$tabList)
  })
}

shinyApp(ui, server)
```

Because `TabContext` and `TabList` are separate Shiny inputs, clicking a
tab updates `TabList`’s value but does not automatically propagate to
`TabContext`. The
[`observe()`](https://rdrr.io/pkg/shiny/man/observe.html) block bridges
them: it watches `input$tabList` and calls
[`updateTabContext.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md)
to match, which controls which `TabPanel` is visible.

Note that
[`TabPanel.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabPanel.md)
requires an `inputId` even though it never produces a value for the
server. This is because `.shinyInput()` routes through the package’s
JavaScript bundle where it shares the same React tree as `TabContext`.
The plain
[`TabPanel()`](https://felixluginbuhl.com/muiMaterial/reference/TabPanel.md)
would resolve in a separate module context, breaking the React context
connection.

### Comparison

|  | `.static` | `.shinyInput` |
|----|----|----|
| Requires Shiny | No | Yes |
| Works in Quarto | Yes | No |
| Server can read selected tab | No | Yes (`input$tabList`) |
| Server can change selected tab | No | Yes (`updateTabContext.shinyInput`) |
| Requires observer | No | Yes |
| Requires `inputId` | No | Yes |

# Using a router

### Introduction

To use pages with **muiMaterial**, you might need to use a router
service. This document shows examples using the
[reactRouter](https://github.com/lgnbhl/reactRouter) and
[shiny.router](https://appsilon.github.io/shiny.router/) R packages.

### Examples using {reactRouter}

[reactRouter](https://github.com/lgnbhl/reactRouter) wraps React Router
v7. The entry point is `RouterProvider(router = ...)`, where the router
is built with
[`createHashRouter()`](https://felixluginbuhl.com/reactRouter/reference/createHashRouter.html).
Routes are declared with nested
[`Route()`](https://felixluginbuhl.com/reactRouter/reference/Route.html)
calls and the active child route is rendered wherever you place
[`Outlet()`](https://felixluginbuhl.com/reactRouter/reference/Outlet.html)
in the parent’s `element`. The hash strategy
([`createHashRouter()`](https://felixluginbuhl.com/reactRouter/reference/createHashRouter.html))
works in Shiny, Quarto and from a local `file://` page.

An example using [reactRouter](https://github.com/lgnbhl/reactRouter)
client routing (no server):

``` r

# install.packages("reactRouter")
library(reactRouter)
library(muiMaterial)
library(shiny)

reactRouter::RouterProvider(
  router = reactRouter::createHashRouter(
    reactRouter::Route(
      path = "/",
      element = Box(
        sx = list(flexGrow = 1),
        AppBar(
          position = "static",
          Toolbar(
            Typography(
              variant = "h6",
              component = "div",
              "muiMaterial"
            ),
            reactRouter::NavLink(
              to = "/",
              style = JS('({isActive}) => { return isActive ? {color: "white"} : {color: "white"}; }'),
              Button(
                color = "inherit",
                "Home"
              )
            ),
            reactRouter::NavLink(
              to = "/analysis",
              style = JS('({isActive}) => { return isActive ? {color: "white"} : {color: "white"}; }'),
              Button(
                color = "inherit",
                "Analysis"
              )
            )
          )
        ),
        Box(
          sx = list(p = 3),
          reactRouter::Outlet()
        )
      ),
      reactRouter::Route(
        index = TRUE,
        element = div(
          tags$h3("Home page"),
          p("A basic example of reactRouter with muiMaterial."),
          p("Content home")
        )
      ),
      reactRouter::Route(
        path = "analysis",
        element = div(
          tags$h3("Analysis"),
          p("Content analysis")
        )
      ),
      reactRouter::Route(path = "*", element = div(tags$p("Error 404")))
    )
  )
)
```

An example with [reactRouter](https://github.com/lgnbhl/reactRouter) in
an R Shiny app (with server). Each route’s `element` holds a
[`uiOutput()`](https://rdrr.io/pkg/shiny/man/htmlOutput.html) that the
server fills with
[`renderUI()`](https://rdrr.io/pkg/shiny/man/renderUI.html); client-side
navigation mounts the matched route and Shiny renders its content
automatically:

``` r

# install.packages("reactRouter")
library(reactRouter)
library(muiMaterial)
library(shiny)

ui <- muiMaterialPage(
  CssBaseline(),
  reactRouter::RouterProvider(
    router = reactRouter::createHashRouter(
      reactRouter::Route(
        path = "/",
        element = div(
          Typography("reactRouter with muiMaterial", variant = "h5", m = 2),
          Stack(
            direction = "row", spacing = 2, p = 2,
            Paper(
              MenuList(
                reactRouter::NavLink(
                  to = "/",
                  style = JS('({isActive}) => { return isActive ? {color: "red", textDecoration:"none"} : { textDecoration: "none" }; }'),
                  MenuItem(
                    "Home"
                  )
                ),
                reactRouter::NavLink(
                  to = "/analysis",
                  style = JS('({isActive}) => { return isActive ? {color: "red", textDecoration: "none"} : { textDecoration: "none" }; }'),
                  MenuItem(
                    "Analysis"
                  )
                ),
                reactRouter::NavLink(
                  to = "/about",
                  style = JS('({ isActive }) => { return isActive ? { color: "red", textDecoration: "none" } : { textDecoration: "none" }; }'),
                  MenuItem(
                    "About"
                  )
                )
              )
            ),
            Box(
              reactRouter::Outlet()
            )
          )
        ),
        reactRouter::Route(
          index = TRUE,
          element = div(
            tags$h1("Home page"),
            tags$h4("A basic example of reactRouter with muiMaterial."),
            uiOutput(outputId = "contentHome")
          )
        ),
        reactRouter::Route(
          path = "analysis",
          element = div(
            tags$h1("Analysis"),
            uiOutput(outputId = "contentAnalysis")
          )
        ),
        reactRouter::Route(
          path = "about",
          element = uiOutput(outputId = "contentAbout")
        ),
        reactRouter::Route(path = "*", element = div(tags$p("Error 404")))
      )
    )
  )
)

server <- function(input, output, session) {

  # Content for Home page
  output$contentHome <- renderUI({
    p("Content home")
  })

  # Content for Analysis page
  output$contentAnalysis <- renderUI({
    p("Content analysis")
  })

  # Content for About page
  output$contentAbout <- renderUI({
    div(
      tags$h1("About"),
      p("Content about")
    )
  })

}

shinyApp(ui, server)
```

### Example using {shiny.router}

Below an example using the
[shiny.router](https://appsilon.github.io/shiny.router/) R package.

Note that using
[`CssBaseline()`](https://felixluginbuhl.com/muiMaterial/reference/CssBaseline.md)
at top level doesn’t work with shiny.router.
[`CssBaseline()`](https://felixluginbuhl.com/muiMaterial/reference/CssBaseline.md)
should be used only at the lower level, as showed below.

``` r

library(shiny)
library(muiMaterial)
library(shiny.router)

Header <- CssBaseline(
  Box(
    sx = list(flexGrow = 1),
    AppBar(
      position = "static",
      Toolbar(
        IconButton(
          shiny::icon("home"),
          href = route_link("#!/"),
          size = "large",
          edge = "start",
          color = "inherit",
          'aria-label' = "home",
          sx = list(mr = 2)
        ),
        Link(
          "Other",
          href = route_link("#!/other"),
          underline = "none",
          edge = "start",
          color = "inherit",
          'aria-label' = "other",
          sx = list(mr = 2)
        )
      )
    )
  )
)

Main <- CssBaseline(
  Box(
    sx = list(display = "flex", alignItems = "center", p = 2),
    Typography("Main content.")
  )
)

otherPage <- CssBaseline(
  Box(
    sx = list(display = "flex", alignItems = "center", p = 2),
    Typography("Other content.")
  )
)

ui <- muiMaterialPage( # using CssBaseline() here doesn't work with shiny.router
  Header,
  router_ui(
    route("/", Main),
    route("other", otherPage)
  )
)

server <- function(input, output, session) {
  router_server()
}

shinyApp(ui, server)
```

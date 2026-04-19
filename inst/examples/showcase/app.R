library(shiny)
library(muiMaterial)

# ── Source example files into an isolated environment ────────────────────────
example_files <- list.files(
  system.file("examples", package = "muiMaterial"),
  full.names = TRUE,
  pattern = "\\.R$"
)
example_env <- new.env(parent = globalenv())
invisible(sapply(X = example_files, FUN = source, local = example_env))

# ── Discover components from ui_* objects ────────────────────────────────────
# Any new example file that defines ui_Foo will automatically appear in the nav.
# Add names here to exclude them from the showcase.
exclude_components <- c(
  "CustomComponentShinyInput",
  "CustomComponentShinyInputStyled"
)

discovered <- sort(ls(pattern = "^ui_", envir = example_env))
components <- sub("^ui_", "", discovered)
components <- components[!components %in% exclude_components]

initial_tab <- components[1]

# Return source code for a given component name.
# Tries exact filename first, then scans all example files for the definition.
get_code_example <- function(component_name) {
  exact <- system.file(
    file.path("examples", paste0(component_name, ".R")),
    package = "muiMaterial"
  )
  if (file.exists(exact)) {
    return(readChar(exact, file.info(exact)$size))
  }

  pattern <- paste0("^ui_", gsub("\\.", "\\\\.", component_name), "\\s*<-")
  for (f in example_files) {
    txt <- tryCatch(readChar(f, file.info(f)$size), error = function(e) "")
    if (grepl(pattern, txt, perl = TRUE)) return(txt)
  }
  ""
}

# ── Layout constants ─────────────────────────────────────────────────────────
drawer_width <- 260

# ── Helpers ───────────────────────────────────────────────────────────────────

create_tab_list <- function(tablist_id) {
  tab_items <- unname(lapply(components, function(name) {
    Tab(
      label = name,
      value = name,
      sx = list(
        alignItems = "flex-start",
        textAlign = "left",
        minHeight = 44,
        pl = 3,
        textTransform = "none",
        fontSize = "0.875rem"
      )
    )
  }))
  do.call(
    TabList.shinyInput,
    c(
      list(
        inputId = tablist_id,
        value = initial_tab,
        orientation = "vertical",
        sx = list(
          "& .MuiTabs-indicator" = list(left = 0, right = "auto", width = 3),
          "& .Mui-selected" = list(fontWeight = 700)
        )
      ),
      tab_items
    )
  )
}

create_nav_content <- function(tablist_id) {
  Box(
    sx = list(height = "100%", display = "flex", flexDirection = "column"),
    Toolbar(
      Typography(
        "muiMaterial",
        variant = "h6",
        component = "div",
        sx = list(fontWeight = 700, color = "primary.main")
      )
    ),
    Divider(),
    Box(
      sx = list(overflow = "auto", flexGrow = 1, pt = 1),
      create_tab_list(tablist_id)
    )
  )
}

create_panel <- function(component_name) {
  TabPanel.shinyInput(
    inputId = paste0("tab", component_name),
    value = component_name,
    Box(
      sx = list(pb = 5),
      Typography(
        component_name,
        variant = "h4",
        gutterBottom = TRUE,
        sx = list(fontWeight = 700)
      ),
      Divider(sx = list(mb = 3)),
      Card(
        elevation = 0,
        sx = list(
          border = 1,
          borderColor = "divider",
          borderRadius = 2,
          mb = 3
        ),
        CardContent(
          get(paste0("ui_", component_name), envir = example_env)
        )
      ),
      Accordion(
        elevation = 0,
        disableGutters = TRUE,
        sx = list(
          border = 1,
          borderColor = "divider",
          borderRadius = 2,
          "&:before" = list(display = "none")
        ),
        AccordionSummary(
          expandIcon = shiny::icon("chevron-down"),
          Typography("Show R code", variant = "body2", color = "text.secondary")
        ),
        AccordionDetails(
          sx = list(p = 0),
          Box(
            sx = list(
              bgcolor = "grey.50",
              borderTop = 1,
              borderColor = "divider",
              overflow = "auto",
              p = 2
            ),
            tags$pre(
              style = "margin: 0;",
              tags$code(
                style = "font-size: 0.75rem; font-family: monospace; white-space: pre-wrap;",
                get_code_example(component_name)
              )
            )
          )
        )
      )
    )
  )
}

# ── UI ────────────────────────────────────────────────────────────────────────
ui <- muiMaterialPage(
  CssBaseline(
    TabContext.shinyInput(
      inputId = "context",
      value = initial_tab,

      Box(
        sx = list(display = "flex"),

        # AppBar ---------------------------------------------------------------
        AppBar(
          position = "fixed",
          sx = list(zIndex = 1300),
          Toolbar(
            IconButton(
              id = "mobile-nav-trigger",
              color = "inherit",
              edge = "start",
              sx = list(mr = 2, display = list(sm = "none")),
              shiny::icon("bars")
            ),
            Typography(
              "muiMaterial",
              variant = "h6",
              component = "div",
              sx = list(fontWeight = 700, letterSpacing = "0.3px")
            ),
            Typography(
              "\u00b7 Showcase",
              variant = "body1",
              sx = list(
                ml = 1,
                opacity = 0.75,
                display = list(xs = "none", sm = "block")
              )
            )
          )
        ),

        # Sidebar nav ----------------------------------------------------------
        Box(
          component = "nav",
          sx = list(width = list(sm = drawer_width), flexShrink = list(sm = 0)),

          # Mobile: Drawer.triggerId (no server logic needed)
          Drawer.triggerId(
            triggerId = "mobile-nav-trigger",
            anchor = "left",
            width = drawer_width,
            sx = list(
              display = list(xs = "block", sm = "none"),
              "& .MuiDrawer-paper" = list(
                boxSizing = "border-box",
                width = drawer_width
              )
            ),
            create_nav_content("tabListMobile")
          ),

          # Desktop: permanent drawer
          Drawer(
            variant = "permanent",
            open = TRUE,
            sx = list(
              display = list(xs = "none", sm = "block"),
              "& .MuiDrawer-paper" = list(
                boxSizing = "border-box",
                width = drawer_width
              )
            ),
            create_nav_content("tabListDesktop")
          )
        ),

        # Main content ---------------------------------------------------------
        Box(
          component = "main",
          sx = list(
            flexGrow = 1,
            p = 3,
            width = list(sm = sprintf("calc(100%% - %dpx)", drawer_width)),
            minHeight = "100vh",
            bgcolor = "background.default"
          ),
          Toolbar(), # spacer for fixed AppBar
          do.call(
            Container,
            c(
              list(maxWidth = "md"),
              unname(lapply(components, create_panel))
            )
          )
        )
      )
    )
  )
)

# ── Server ────────────────────────────────────────────────────────────────────
server <- function(input, output, session) {
  # Navigation sync: two TabLists (desktop + mobile) share one reactiveVal
  selected_tab <- reactiveVal(initial_tab)

  observeEvent(input$tabListDesktop, {
    if (
      !is.null(input$tabListDesktop) && input$tabListDesktop != selected_tab()
    ) {
      selected_tab(input$tabListDesktop)
    }
  })

  observeEvent(input$tabListMobile, {
    if (
      !is.null(input$tabListMobile) && input$tabListMobile != selected_tab()
    ) {
      selected_tab(input$tabListMobile)
    }
  })

  observe({
    val <- selected_tab()
    updateTabContext.shinyInput(inputId = "context", value = val)
    updateTabList.shinyInput(inputId = "tabListDesktop", value = val)
    updateTabList.shinyInput(inputId = "tabListMobile", value = val)
  })

  # Delegate server logic to each example's server_* function (if it exists).
  # Pass only the arguments the function actually declares (some omit session).
  lapply(components, function(comp) {
    fn_name <- paste0("server_", comp)
    if (
      exists(fn_name, envir = example_env) &&
        is.function(get(fn_name, envir = example_env))
    ) {
      fn <- get(fn_name, envir = example_env)
      all_args <- list(input = input, output = output, session = session)
      do.call(fn, all_args[names(formals(fn))])
    }
  })
}

shinyApp(ui = ui, server = server)

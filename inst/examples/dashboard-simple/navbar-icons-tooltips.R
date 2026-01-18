library(shiny)
library(muiMaterial)
library(reactRouter)

# Main navigation items with icons
main_links_data <- list(
  list(icon = "home", label = "Home", path = "/"),
  list(icon = "desktop", label = "Analytics", path = "/analytics"),
  list(icon = "calendar", label = "Releases", path = "/releases"),
  list(icon = "user", label = "Account", path = "/account"),
  list(icon = "fingerprint", label = "Security", path = "/security"),
  list(icon = "cog", label = "Settings", path = "/settings")
)

ui <- muiMaterialPage(
  CssBaseline(
    HashRouter(
      Paper(
        elevation = 3,
        sx = list(
          display = "flex",
          height = "100vh",
          backgroundColor = "background.paper"
        ),
        
        # Left sidebar with icon navigation
        Box(
          sx = list(
            width = 80,
            display = "flex",
            flexDirection = "column",
            alignItems = "center",
            py = 2,
            borderRight = 1,
            borderColor = "divider",
            backgroundColor = "background.default"
          ),
          
          # Logo
          Box(
            sx = list(
              width = 50,
              height = 50,
              borderRadius = "50%",
              backgroundColor = "primary.main",
              display = "flex",
              alignItems = "center",
              justifyContent = "center",
              color = "white",
              fontWeight = "bold",
              fontSize = 20,
              mb = 2
            ),
            "MUI"
          ),
          
          # Main navigation icons
          Box(
            sx = list(
              display = "flex",
              flexDirection = "column",
              gap = 0.5
            ),
            lapply(main_links_data, function(link) {
              Tooltip(
                title = link$label,
                placement = "right",
                arrow = TRUE,
                NavLink(
                  to = link$path,
                  IconButton(
                    icon(link$icon, lib = "font-awesome"),
                    sx = list(
                      width = 50,
                      height = 50,
                      borderRadius = 1,
                      color = "text.secondary",
                      "&:hover" = list(
                        backgroundColor = "action.hover"
                      )
                    )
                  )
                )
              )
            })
          )
        ),
        
        # Right panel with routes
        Box(
          sx = list(
            width = 240,
            display = "flex",
            flexDirection = "column",
            p = 2
          ),
          Routes(
            Route(path = "/", element = "Home"),
            Route(path = "/analytics", element = "Analytics"),
            Route(path = "/releases", element = "Releases"),
            Route(path = "/account", element = "Account"),
            Route(path = "/security", element = "Security"),
            Route(path = "/settings", element = "Settings")
          )
        )
      )
    )
  )
)

server <- function(input, output, session) {
  # # Track current URL hash
  # current_path <- reactiveVal("/")
  # 
  # # Observe URL changes
  # observeEvent(session$clientData$url_hash, {
  #   url_hash <- session$clientData$url_hash
  #   if (!is.null(url_hash) && url_hash != "") {
  #     # Remove the leading # if present
  #     #path <- sub("^#", "", url_hash)
  #     current_path(url_hash)
  #     cat("Current path:", url_hash, "\n")
  #   }
  # })
}

shinyApp(ui, server)

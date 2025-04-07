# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/MenuButton.tsx

MenuButton <- function(showBadge = FALSE, ...){
  Badge(
    color = "error",
    variant = "dot",
    invisible = !showBadge,
    sx = list("[`& .${badgeClasses.badge}`]" = list(right = 2, top = 2 )),
    IconButton.shinyInput(
      inputId = "showMenuButton",
      size = "small",
      shiny::icon("ellipsis-vertical"),
      ... 
    )
  )
}

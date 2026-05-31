# Accessors for the shiny.react reactElement payload carried by a muiMaterial
# tag. The wrappers stash that payload in the environment of the second child,
# which is a shiny.react implementation detail. Centralising the reach-in here
# means a change on the shiny.react side touches only this file instead of every
# component test.
react_data <- function(tag) {
  environment(tag[["children"]][[2]])[["data"]]
}

# The React component name (e.g. "Button", "MuiDrawerTriggerId").
react_name <- function(tag) {
  react_data(tag)[["name"]]
}

# The props list as it crosses the R -> JS bridge. asProps() nests the real
# props one level deep under `props$value`, so unwrap that here.
react_props <- function(tag) {
  react_data(tag)[["props"]][["value"]]
}

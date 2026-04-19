library(shiny)
library(muiMaterial)

# Client-side tabs: no server reactivity required.
# TabContext.static / TabList.static wrap @mui/lab's TabContext / TabList
# and add internal React state so the selected tab persists across clicks.
# TabPanel comes straight from @mui/lab — no wrapper needed.
ui_Tabs <- muiMaterialPage(
  CssBaseline(),
  Box(
    sx = list(p = 2, width = "100%", typography = "body1"),
    TabContext.static(
      value = "one",
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
  )
)

server_Tabs <- function(input, output, session) {}

if (interactive()) {
  shinyApp(ui = ui_Tabs, server = server_Tabs)
}

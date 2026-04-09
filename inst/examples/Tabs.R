library(muiMaterial)

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
  TabPanel.static(value = "one", "Content 1"),
  TabPanel.static(value = "two", "Content 2"),
  TabPanel.static(value = "three", "Content 3")
)

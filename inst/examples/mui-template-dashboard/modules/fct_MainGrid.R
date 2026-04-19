# https://github.com/mui/material-ui/blob/v9.0.0/docs/data/material/getting-started/templates/dashboard/components/MainGrid.tsx
# Note: CustomizedDataGrid (requires @mui/x-data-grid) and CustomizedTreeView
# (requires @mui/x-tree-view) are replaced by placeholders.

fct_MainGrid <- function() {
  Box(
    sx = list(width = '100%', maxWidth = list(sm = '100%', md = '1700px')),

    # Overview section
    Typography(component = "h2", variant = "h6", sx = list(mb = 2), "Overview"),
    Grid(
      container = TRUE,
      spacing = 2,
      columns = 12,
      sx = list(mb = "(theme) => theme.spacing(2)"),
      Grid(
        size = list(xs = 12, sm = 6, lg = 3),
        fct_StatCard("Users", "14k", "Last 30 days", "up")
      ),
      Grid(
        size = list(xs = 12, sm = 6, lg = 3),
        fct_StatCard("Conversions", "325", "Last 30 days", "down")
      ),
      Grid(
        size = list(xs = 12, sm = 6, lg = 3),
        fct_StatCard("Event count", "200k", "Last 30 days", "neutral")
      ),
      Grid(
        size = list(xs = 12, sm = 6, lg = 3),
        fct_HighlightedCard()
      ),
      Grid(
        size = list(xs = 12, md = 6),
        fct_SessionsChart()
      ),
      Grid(
        size = list(xs = 12, md = 6),
        fct_PageViewsBarChart()
      )
    ),

    # Details section
    Typography(component = "h2", variant = "h6", sx = list(mb = 2), "Details"),
    Grid(
      container = TRUE,
      spacing = 2,
      columns = 12,
      Grid(
        size = list(xs = 12, lg = 9),
        Card(
          variant = "outlined",
          sx = list(
            width = '100%',
            height = 400,
            display = 'flex',
            alignItems = 'center',
            justifyContent = 'center'
          ),
          Typography(
            variant = "caption",
            sx = list(color = 'text.disabled'),
            "DataGrid() \u2014 make it with the ",
            muiMaterial::Link(
              href = "https://felixluginbuhl.com/muiDataGrid",
              target = "_blank",
              style = "color: inherit;",
              "muiDataGrid"
            ),
            " R package"
          )
        )
      ),
      Grid(
        size = list(xs = 12, lg = 3),
        Stack(
          direction = list(xs = 'column', sm = 'row', lg = 'column'),
          sx = list(gap = 2),
          Card(
            variant = "outlined",
            sx = list(
              width = '100%',
              flexGrow = 1,
              display = 'flex',
              alignItems = 'center',
              justifyContent = 'center',
              p = 2
            ),
            Typography(
              variant = "caption",
              sx = list(color = 'text.disabled'),
              "TreeView() \u2014 make it with the ",
              muiMaterial::Link(
                href = "https://felixluginbuhl.com/muiTreeView",
                target = "_blank",
                style = "color: inherit;",
                "muiTreeView"
              ),
              " R package"
            )
          ),
          fct_ChartUserByCountry()
        )
      )
    ),

    # Copyright
    Typography(
      variant = "body2",
      align = "center",
      sx = list(color = 'text.secondary', my = 4),
      "Made with ",
      muiMaterial::Link(
        href = "https://felixluginbuhl.com/muiMaterial",
        target = "_blank",
        style = "color: inherit;",
        "muiMaterial"
      ),
      " and ",
      muiMaterial::Link(
        href = "https://felixluginbuhl.com/reactRouter",
        target = "_blank",
        style = "color: inherit;",
        "reactRouter"
      )
    )
  )
}

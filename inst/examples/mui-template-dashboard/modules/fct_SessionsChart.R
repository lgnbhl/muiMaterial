# https://github.com/mui/material-ui/blob/v9.0.0/docs/data/material/getting-started/templates/dashboard/components/SessionsChart.tsx
# Note: LineChart (requires @mui/x-charts) is replaced by a placeholder.

fct_SessionsChart <- function() {
  Card(
    variant = "outlined",
    sx = list(width = '100%'),
    CardContent(
      Typography(
        component = "h2",
        variant = "subtitle2",
        gutterBottom = TRUE,
        "Sessions"
      ),
      Stack(
        sx = list(justifyContent = 'space-between'),
        Stack(
          direction = "row",
          sx = list(alignItems = 'center', gap = 1),
          Typography(variant = "h4", component = "p", "13,277"),
          Chip(size = "small", color = "success", label = "+35%")
        ),
        Typography(
          variant = "caption",
          sx = list(color = 'text.secondary'),
          "Sessions per day for the last 30 days"
        )
      ),
      Box(
        sx = list(
          width = '100%',
          height = 250,
          display = 'flex',
          alignItems = 'center',
          justifyContent = 'center',
          bgcolor = 'action.hover',
          borderRadius = 1,
          mt = 2
        ),
        Typography(
          variant = "caption",
          sx = list(color = 'text.disabled', m = 1),
          "LineChart() \u2014 make it with the ",
          muiMaterial::Link(
            href = "https://felixluginbuhl.com/muiCharts",
            target = "_blank",
            style = "color: inherit;",
            "muiCharts"
          ),
          " R package"
        )
      )
    )
  )
}

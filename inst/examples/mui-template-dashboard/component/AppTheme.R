# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/shared-theme/AppTheme.js

AppTheme <- function(..., theme_dark = TRUE){
  ThemeProvider(
    theme = list(
      colorSchemes = list(
        dark = theme_dark
      ),
      cssVariables = list(
        colorSchemeSelector = 'data-mui-color-scheme',
        cssVarPrefix = 'template'
      ),
      typography = themePrimitivesTypography(),
      shape = themePrimitivesShape(),
      colorSchemes = themePrimitivesColorSchemes()
    ),
    disableTransitionOnChange = TRUE,
    ...
  )
}

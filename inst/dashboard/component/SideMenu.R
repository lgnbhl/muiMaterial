# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/SideMenu.tsx
source(system.file("dashboard/component/MenuContent.R", package = "shinyMaterialUI"))
source(system.file("dashboard/component/CardAlert.R", package = "shinyMaterialUI"))
source(system.file("dashboard/component/SelectContent.R", package = "shinyMaterialUI"))
source(system.file("dashboard/component/OptionsMenu.R", package = "shinyMaterialUI"))

SideMenu <- function(){
  Drawer(
    variant = "permanent",
    sx = list(
      width = 240,
      flexShrink = 0,
      boxSizing = 'border-box',
      mt = 10,
      display = list(xs = 'none', md = 'block')
    ),
    Box(
      sx = list(
        display = 'flex',
        mt = 'calc(var(--template-frame-height, 0px) + 4px)',
        p = 1.5
      ),
      SelectContent()
    ),
    Divider(),
    MenuContent(),
    CardAlert(),
    Stack(
      direction = "row",
      sx = list(
        p = 2,
        gap = 1,
        alignItems = 'center',
        borderTop = '1px solid',
        borderColor = 'divider'
      ),
      Avatar(
        sizes = "small",
        alt = "Felix Luginbuhl",
        src = "https://felixluginbuhl.com/about/image-profile.jpg",
        sx = list(width = 36, height = 36)
      ),
      Box(
        sx = list(mr = 'auto'),
        Typography(
          variant = "body2",
          sx = list(fontWeight = 500, lineHeight = '16px'),
          "Felix Luginbuhl"
        ),
        Typography(
          variant = "caption",
          sx = list(color = 'text.secondary'),
          "felixluginbuhl.com"
        )
      ),
      OptionsMenu()
    )
  )
}

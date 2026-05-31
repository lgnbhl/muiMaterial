# muiMaterial: Material UI for Shiny and Quarto

\`muiMaterial\` is a thin R wrapper around the \[Material
UI\](https://mui.com/material-ui/getting-started/) React component
library, exposed for Shiny applications and Quarto documents via
\[shiny.react\]\[shiny.react::shiny.react\].

## Function naming convention

The package deliberately mirrors the MUI JavaScript API:

- \`\<Component\>()\`:

  PascalCase, e.g. \[Button()\], \[Box()\], \[Typography()\]. These
  produce a React element you can drop into the UI of a Shiny app or a
  Quarto document. They are not bound to Shiny's input system.

- \`\<Component\>.shinyInput()\`:

  The dotted suffix marks the \*Shiny-wired\* variant. These accept an
  \`inputId\` and report their value back to the Shiny server as
  \`input\[\[inputId\]\]\`. The matching
  \`update\<Component\>.shinyInput()\` mutates the component from the
  server.

- \`\<Component\>.triggerId()\`:

  Variants of overlay components (Drawer, Dialog, Menu, Modal, Popover,
  SwipeableDrawer) that bind to an existing DOM element by id.
  Open/close state is managed entirely client-side, so they work in
  Shiny apps, Quarto documents and static HTML without any server logic.

The dot suffix (\`.shinyInput\`, \`.triggerId\`) is intentional: it
groups related families together in autocompletion (\`Button.\<TAB\>\`
surfaces \`Button.shinyInput\`, \`updateButton.shinyInput\`, etc.)
without shadowing the corresponding MUI component. These functions are
regular R functions, \*\*not\*\* S3 methods.

## Getting started

Wrap your UI in \[muiMaterialPage()\] (or include a
\[muiMaterialDependency()\] manually) and start composing components.
See https://felixluginbuhl.com/muiMaterial/articles/ for a full
walkthrough.

## See also

Useful links:

- <https://felixluginbuhl.com/muiMaterial/>

- Report bugs at <https://github.com/lgnbhl/muiMaterial/issues>

## Author

**Maintainer**: Felix Luginbuhl <felix.luginbuhl@protonmail.ch>
([ORCID](https://orcid.org/0009-0008-6625-2899)) \[copyright holder\]

Other contributors:

- MUI (Copyright holder of the bundled '@mui/material', '@mui/lab',
  '@mui/system' and '@mui/utils' JavaScript libraries) \[copyright
  holder\]

- Emotion team (Copyright holder of the bundled '@emotion/react' and
  '@emotion/styled' JavaScript libraries) \[copyright holder\]

- Meta Platforms, Inc. and affiliates (Copyright holder of the bundled
  'react-is' JavaScript library; 'react' and 'react-dom' are declared as
  peer dependencies and provided at runtime by 'shiny.react')
  \[copyright holder\]

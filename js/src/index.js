import * as Inputs from './inputs';
import ThemeProvider from './ThemeProvider';
import MuiSwipeableDrawerTriggerId from './MuiSwipeableDrawerTriggerId';
import MuiDrawerTriggerId from './MuiDrawerTriggerId';
import MuiMenuTriggerId from './MuiMenuTriggerId';
import MuiDialogTriggerId from './MuiDialogTriggerId';
import MuiModalTriggerId from './MuiModalTriggerId';
import MuiPopoverTriggerId from './MuiPopoverTriggerId';
import { MuiStaticTabContext, MuiStaticTabList } from './MuiStaticTabs';

import * as MuiMaterial from '@mui/material';
import * as MuiSystem from '@mui/system';
import * as MuiUtils from '@mui/utils';
import * as MuiLab from '@mui/lab';
// Theming/styling singletons. These are the modules that hold shared mutable
// state — @mui/private-theming owns the React `ThemeContext` that useTheme()
// reads, and @mui/styled-engine + @emotion/cache own the emotion style cache.
// Companion packages (e.g. muiCharts) bundle @mui/x-charts, which deep-imports
// @mui/system subpaths that in turn `require("@mui/private-theming")` and
// `require("@mui/styled-engine")`. Exposing them here lets those packages
// externalize against this single instance so a ThemeProvider rendered by
// muiMaterial reaches the bundled charts (otherwise each bundle gets its own
// ThemeContext object and theming/sx is silently ignored).
import * as MuiPrivateTheming from '@mui/private-theming';
import * as MuiStyledEngine from '@mui/styled-engine';
import * as EmotionReact from '@emotion/react';
import * as EmotionStyled from '@emotion/styled';
import * as EmotionCache from '@emotion/cache';

window.jsmodule = {
  ...window.jsmodule,
  '@/muiMaterial': {
    ...Inputs,
    ThemeProvider,
    MuiSwipeableDrawerTriggerId,
    MuiDrawerTriggerId,
    MuiMenuTriggerId,
    MuiDialogTriggerId,
    MuiModalTriggerId,
    MuiPopoverTriggerId,
    MuiStaticTabContext,
    MuiStaticTabList,
  },
  '@mui/material': MuiMaterial,
  '@mui/system': MuiSystem,
  '@mui/utils': MuiUtils,
  '@mui/lab': MuiLab,
  '@mui/private-theming': MuiPrivateTheming,
  '@mui/styled-engine': MuiStyledEngine,
  '@emotion/react': EmotionReact,
  '@emotion/styled': EmotionStyled,
  '@emotion/cache': EmotionCache,
};

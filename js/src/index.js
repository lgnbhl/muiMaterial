import React from 'react';

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

// React is externalized to jsmodule["react"] and provided at runtime by
// shiny.react. The bundled MUI v9 wrappers are built and tested against
// React 18 only — React 19 is not supported.
const reactMajor = parseInt(React.version, 10);
if (reactMajor !== 18) {
  // eslint-disable-next-line no-console
  console.warn(
    `muiMaterial: React ${React.version} is loaded at runtime, but muiMaterial ` +
    'only supports React 18. Components may misbehave; check the installed ' +
    'shiny.react version (which provides React).'
  );
}

const sharedModules = {
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

// These keys are singletons by design (see the comment above): companion
// packages externalize against this instance. If another bundle already
// registered one of them, the last script loaded silently wins — a different
// MUI/emotion copy would swap in underneath everyone else, so surface it.
const existing = window.jsmodule || {};
const overwritten = Object.keys(sharedModules)
  .filter((key) => key in existing && existing[key] !== sharedModules[key]);
if (overwritten.length > 0) {
  // eslint-disable-next-line no-console
  console.warn(
    `muiMaterial: overwriting existing jsmodule registration(s): ${overwritten.join(', ')}. ` +
    'Another package bundled its own copy of these modules; the muiMaterial ' +
    'copy now wins. If both packages pin the same versions this is harmless.'
  );
}

window.jsmodule = {
  ...existing,
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
  ...sharedModules,
};

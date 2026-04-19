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
import * as EmotionReact from '@emotion/react';
import * as EmotionStyled from '@emotion/styled';

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
  '@emotion/react': EmotionReact,
  '@emotion/styled': EmotionStyled,
};

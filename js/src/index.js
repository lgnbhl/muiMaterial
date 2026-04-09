import * as Inputs from './inputs';
import ThemeProvider from './ThemeProvider';
import MuiSwipeableDrawerTriggerId from './MuiSwipeableDrawerTriggerId';
import MuiDrawerTriggerId from './MuiDrawerTriggerId';
import MuiMenuTriggerId from './MuiMenuTriggerId';
import { MuiStaticTabContext, MuiStaticTabList, MuiStaticTabPanel } from './MuiStaticTabs';

window.jsmodule = {
  ...window.jsmodule,
  '@/muiMaterial': { ...Inputs, ThemeProvider, MuiSwipeableDrawerTriggerId, MuiDrawerTriggerId, MuiMenuTriggerId, MuiStaticTabContext, MuiStaticTabList, MuiStaticTabPanel },
  '@mui/material': require('@mui/material'),
  '@mui/system': require('@mui/system'),
  '@mui/utils': require('@mui/utils'),
  '@mui/lab': require('@mui/lab'),
  '@emotion/react': require('@emotion/react'),
  '@emotion/styled': require('@emotion/styled'),
};

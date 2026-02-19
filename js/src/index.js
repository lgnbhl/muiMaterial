import * as Inputs from './inputs';
import ThemeProvider from './ThemeProvider';
import MuiSwipeableDrawerTriggerId from './MuiSwipeableDrawerTriggerId';
import MuiDrawerTriggerId from './MuiDrawerTriggerId';
import MuiMenuTriggerId from './MuiMenuTriggerId';

window.jsmodule = {
  ...window.jsmodule,
  '@/muiMaterial': { ...Inputs, ThemeProvider, MuiSwipeableDrawerTriggerId, MuiDrawerTriggerId, MuiMenuTriggerId },
  '@mui/material': require('@mui/material'),
  '@mui/lab': require('@mui/lab'),
  '@emotion/react': require('@emotion/react'),
  '@emotion/styled': require('@emotion/styled'),
};

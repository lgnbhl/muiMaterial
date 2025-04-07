import * as Inputs from './inputs';
import ThemeProvider from './ThemeProvider';

window.jsmodule = {
  ...window.jsmodule,
  '@/shinyMaterialUI': { ...Inputs, ThemeProvider },
  '@mui/material': require('@mui/material'),
  '@emotion/react': require('@emotion/react'),
  '@emotion/styled': require('@emotion/styled'),
};

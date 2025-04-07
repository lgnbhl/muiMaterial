import { ThemeProvider as MuiThemeProvider, createTheme } from '@mui/material';

export default ({ children, theme }) => (
  <MuiThemeProvider theme={createTheme(theme)}>{children}</MuiThemeProvider>
);

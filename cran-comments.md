## R CMD check results

0 errors | 0 warnings | 1 note

* This is a feature release (0.1.3 -> 0.2.0). User-visible changes are
  documented in `NEWS.md`.

* Possibly NOTE: installed size. The package bundles a pre-built minified
  JavaScript file (`inst/www/muiMaterial/mui-material.js`, ~580 KB) which
  contains the Material UI library wrapped by this package. The bundle is
  required at runtime; `react` and `react-dom` are externalised and provided
  by `shiny.react`. Third-party copyright and MIT license texts for the
  bundled code are preserved in `inst/www/muiMaterial/mui-material.js.LICENSE.txt`
  and summarised in the top-level `LICENSE.note`. Copyright holders of the
  bundled JavaScript are declared in `DESCRIPTION` (MUI, Emotion team, Meta
  Platforms).

## Test environments

* local: Windows 11, R 4.4.2
* GitHub Actions: ubuntu-latest (R release)
* GitHub Actions: ubuntu-latest (R devel)
* GitHub Actions: ubuntu-latest (R oldrel-1)
* GitHub Actions: macOS-latest (R release)
* GitHub Actions: windows-latest (R release)

## Reverse dependencies

There are currently no reverse dependencies for this package.

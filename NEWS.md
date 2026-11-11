# fmutils 0.2.0

* New `load_fm_fonts()` registers the bundled Ubuntu families with `sysfonts` and turns on `showtext`. Inside knitr or Quarto it sets the `fig.showtext` chunk option, so knitr matches the `showtext` resolution to each chunk's `dpi` and `fig.retina`. Calling `showtext::showtext_auto()` alone keeps the 96 dpi default and draws text too small in high resolution figures.
* Adds a pkgdown site, deployed with GitHub Actions.

# fmutils 0.1.0

* First version. The book helpers (`co_box()`, `status()`, `%nin%`), the Ubuntu font functions, and `theme_fmggp2()` move here from fmggp2, which is now the ggzoomer theme package.

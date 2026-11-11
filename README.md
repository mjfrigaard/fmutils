# fmutils

`fmutils` ([site](https://mjfrigaard.github.io/fmutils/)) holds the small helpers the field manual books share, so each book loads the same tested code.

## Installation

```r
# install.packages("pak")
pak::pak("mjfrigaard/fmutils")
```

## Functions

| Function | What it does |
|---|---|
| `co_box()` | Prints a Quarto callout box (use with `results: asis`) |
| `status()` | Prints a chapter status callout |
| `%nin%` | The negation of `%in%` |
| `theme_fmggp2()` | The book theme for [ggplot2: field manual](https://mjfrigaard.github.io/fm-ggp2/) |
| `load_fm_fonts()` | Registers the bundled Ubuntu fonts and turns on `showtext` at the right resolution |
| `add_fonts()`, `load_fmggp2_fonts()` | Register the bundled Ubuntu fonts (older functions) |

The Gen Z themes live in [ggzoomer](https://github.com/mjfrigaard/ggzoomer) and the 90s themes in [ggrewindr](https://github.com/mjfrigaard/ggrewindr).

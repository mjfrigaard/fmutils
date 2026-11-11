#' Load the Bundled Ubuntu Fonts
#'
#' Registers the Ubuntu fonts bundled with fmutils and turns on `showtext`
#' so graphs can use them.
#'
#' @param dpi The resolution `showtext` uses to size text outside knitr. It
#'     must match the graphics device resolution (`res`), or text is drawn at
#'     the wrong size. Defaults to `96` (the `showtext` default).
#'
#' @details
#' The function registers three families with `sysfonts::font_add()`:
#' `"Ubuntu"` (regular, bold, italic, bold italic), `"Ubuntu Light"`, and
#' `"Ubuntu Medium"`.
#'
#' Inside a knitr or Quarto render, it sets the `fig.showtext` chunk option
#' instead of calling `showtext::showtext_auto()`. knitr then sets the
#' `showtext` resolution from each chunk's `dpi` (times `fig.retina`), so text
#' keeps its size at any figure resolution. Outside knitr, it calls
#' `showtext::showtext_opts(dpi = dpi)` and `showtext::showtext_auto()`.
#'
#' @return The registered family names, invisibly.
#'
#' @export
#'
#' @seealso \code{\link[sysfonts]{font_add}},
#' \code{\link[showtext]{showtext_auto}}
#'
#' @examples
#' load_fm_fonts()
#' "Ubuntu" %in% sysfonts::font_families()
load_fm_fonts <- function(dpi = 96) {
  ttf <- function(x) file.path(font_path(), "Ubuntu", paste0("Ubuntu-", x, ".ttf"))
  sysfonts::font_add("Ubuntu",
    regular = ttf("Regular"), bold = ttf("Bold"),
    italic = ttf("Italic"), bolditalic = ttf("BoldItalic")
  )
  sysfonts::font_add("Ubuntu Light", regular = ttf("Light"), italic = ttf("LightItalic"))
  sysfonts::font_add("Ubuntu Medium", regular = ttf("Medium"), italic = ttf("MediumItalic"))

  if (isTRUE(getOption("knitr.in.progress"))) {
    knitr::opts_chunk$set(fig.showtext = TRUE)
  } else {
    showtext::showtext_opts(dpi = dpi)
    showtext::showtext_auto()
  }
  invisible(c("Ubuntu", "Ubuntu Light", "Ubuntu Medium"))
}

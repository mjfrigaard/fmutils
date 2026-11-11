test_that("load_fm_fonts registers the Ubuntu families", {
  fams <- load_fm_fonts()
  expect_equal(fams, c("Ubuntu", "Ubuntu Light", "Ubuntu Medium"))
  expect_true(all(fams %in% sysfonts::font_families()))
})

test_that("load_fm_fonts sets the showtext dpi outside knitr", {
  withr::defer(showtext::showtext_auto(FALSE))
  load_fm_fonts(dpi = 320)
  expect_equal(showtext::showtext_opts()$dpi, 320)
})

test_that("load_fm_fonts turns on fig.showtext inside knitr", {
  old <- knitr::opts_chunk$get("fig.showtext")
  withr::defer(knitr::opts_chunk$set(fig.showtext = old))
  withr::local_options(knitr.in.progress = TRUE)
  load_fm_fonts()
  expect_true(knitr::opts_chunk$get("fig.showtext"))
})

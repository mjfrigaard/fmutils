test_that("theme_fmggp2 returns a theme", {
  expect_s3_class(suppressMessages(theme_fmggp2()), "theme")
})

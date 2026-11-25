test_that("Explorer launcher is exported", {
  expect_true(
    "run_explorer" %in% getNamespaceExports("arf")
  )

  expect_true(is.function(arf::run_explorer))
})

test_that("Explorer application files are available", {
  app_dir <- system.file("shiny", package = "arf")

  expect_true(nzchar(app_dir))
  expect_true(file.exists(file.path(app_dir, "app.R")))
  expect_true(file.exists(file.path(app_dir, "core.R")))
})

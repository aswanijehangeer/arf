#' Launch the ARF Explorer
#'
#' Launch an interactive Shiny application for exploring
#' synthetic data generation with adversarial random forests
#' and evaluating the statistical similarity of synthetic data.
#'
#' @details
#' The application provides interactive data exploration,
#' configurable synthetic data generation, univariate and
#' bivariate evaluation, and CSV and Excel exports.
#'
#' @return Invisibly returns the result of running the Shiny app.
#'
#' @examples
#' \dontrun{
#' run_explorer()
#' }
#'
#' @export
run_explorer <- function() {
  if (!requireNamespace("shiny", quietly = TRUE)) {
    stop(
      "Please install 'shiny' to use ARF Explorer.",
      call. = FALSE
    )
  }

  app_dir <- system.file("shiny", package = "arf")

  if (!nzchar(app_dir)) {
    stop(
      "ARF Explorer application could not be located.",
      call. = FALSE
    )
  }

  invisible(shiny::runApp(app_dir))
}

#' Set up pkg skeleton
#'
#' @param df data.frame
#' @return data.table
#' @importFrom data.table as.data.table
#' @export
tf <- function(df) {
  dt <- data.table::as.data.table(df)
  return(dt)
}

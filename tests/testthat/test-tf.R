testthat::test_that("tf() works as expected", {

  res <- tf(
    data.frame(x = 1)
  )

  testthat::expect_true(
    data.table::is.data.table(res)
  )

})

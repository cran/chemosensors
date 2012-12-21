context("Incorrect Tests")


# case 'dim(conc) == NULL' is reserved for nrow(conc) == 1
# - use case: computing affinity with conc. matrix of 1 row
test_that("model: 'conc' ( 1 column )", {
  gases <- 2
  pck <- defaultDataPackage()
  data(UNIMANshort, package=pck)
  model <- SensorModel(gases=gases)
  conc <- C[, gases]
  sdata <- predict(model, conc)
  expect_that(length(sdata), is_identical_to(length(conc)))
})

context("Failed Tests")

# SensorModel
test_that("coefficients: case 'gases = c(1, 3)'.", {
  gases <- c(1, 3)
  sm1 <- SensorModel()
  sm2 <- SensorModel(gases=gases)
  expect_that(coef(sm1)[gases], is_equivalent_to(coef(sm2)))
})

# Sensor
test_that("coefficients: case 'gases = c(1, 3)'.", {
  gases <- c(1, 3)
  s1 <- Sensor()
  s2 <- Sensor(gases=gases)
  expect_that(coef(s1)[gases], is_equivalent_to(coef(s2)))
})

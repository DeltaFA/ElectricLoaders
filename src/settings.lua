data:extend{
  {
    type = "double-setting",
    name = "electric-loader-power-use",
    order = "a-a",
    setting_type = "startup",
    minimum_value = 0.0,
    maximum_value = 1000.0,
    default_value = 2.5
  },
  {
    type = "string-setting",
    name = "electric-loader-mode",
    order = "a-b",
    setting_type = "startup",
    default_value = "exponential",
    allowed_values = {"linear", "exponential"}
  }
}

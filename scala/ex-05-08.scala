class Car (val manufacturer: String, val modelName: String, val modelYear: Int = -1, var licensePlate: String = "") {
  override def toString = "Car(%s, %s, %d, %s)".format(manufacturer, modelName, modelYear, licensePlate)
}

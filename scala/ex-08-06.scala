class Point(val x: Double, val y: Double) {
}

abstract class Shape(val upperLeftCorner: Point) {
  def centerPoint: Point
}

class Rectangle(upperLeftCorner: Point, val side1: Double, val side2: Double) extends Shape(upperLeftCorner) {
  override def centerPoint: Point = {
    var p = new Point(upperLeftCorner.x + (side1 / 2.0), upperLeftCorner.y + (side2 / 2.0))
    p
  }
}

class Circle(upperLeftCorner: Point, val diameter: Double) extends Shape(upperLeftCorner) {
  override def centerPoint: Point = {
    var p = new Point(upperLeftCorner.x + (diameter / 2.0), upperLeftCorner.y + (diameter / 2.0))
    p
  }
}

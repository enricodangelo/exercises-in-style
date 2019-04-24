class Point(val x: Double = 0, val y: Double = 0) {
}

class LabeledPoint(var label: String, x: Double, y: Double) extends Point(x, y) {
}

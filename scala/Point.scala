class Point private (val x: Int, val y: Int) {
}

object Point {
  def apply(x: Int, y: Int) {
    new Point(x, y)
  }
}

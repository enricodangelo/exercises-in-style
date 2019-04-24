class Time (val hrs: Int, val min: Int) {
  def before(other: Time): Boolean = {
    var res: Boolean = false
    if (hrs < other.hrs) {
      res = true
    } else if (min < other.min) {
      res = true
    }
    res
  }
}

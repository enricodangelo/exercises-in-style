class Time () {
  private var minsSinceMidnight: Int = 0

  //private def this {
  //}

  def this(hrs: Int, min: Int) {
    this()
    minsSinceMidnight = (hrs * 60) + min
  }

  def hrs: Int = {
    (minsSinceMidnight - (minsSinceMidnight % 60)) / 60
  }

  def hrs_=(hrs: Int) {
    minsSinceMidnight = (hrs * 60) + (minsSinceMidnight % 60)
  }

  def min: Int = {
    minsSinceMidnight % 60
  }

  def min_=(min: Int) {
    minsSinceMidnight = (this.hrs * 60) + min
  }
  
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

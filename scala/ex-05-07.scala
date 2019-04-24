class Person private (val firstName: String, val lastName: String) {
  def this(fullName: String) {
    this(fullName.split(" ")(0), fullName.split(" ")(1))
  }
}

object IsSorted {

  def isSorted[A](array: Array[A], gt: (A, A) => Boolean): Boolean = {
    for(i <- 0 until array.length - 1) {
      if (gt(array(i), array(i + 1))) {
        return false;
      }
    }
    return true;
  }

  def mygt(x: Int, y: Int): Boolean = {
    return x > y;
  }

  def main(args: Array[String]): Unit = {
    println(isSorted(Array(1, 2, 3, 4, 5), mygt));
    println(isSorted(Array(1, 2, 3, 5, 4), mygt));
    println(isSorted(Array(2, 1, 3, 4, 5), mygt));
    println(isSorted(Array(7, 8, 9, 10), mygt));
  }
}

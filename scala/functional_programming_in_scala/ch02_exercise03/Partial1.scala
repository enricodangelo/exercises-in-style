object Partial1 {

  def partial1[A, B, C](a: A, f: (A, B) => C): B => C = {
    return f(a);
  }

//  def main(args: Array[String]): Unit = {
//    println(partial1(1, ));
//    println(isSorted(Array(1, 2, 3, 5, 4), mygt));
//    println(isSorted(Array(2, 1, 3, 4, 5), mygt));
//    println(isSorted(Array(7, 8, 9, 10), mygt));
//  }
}

object Compose {
  def compose[A,B,C](f: B => C, g: A => B): A => C = {
      return f(g(A))
  }
}

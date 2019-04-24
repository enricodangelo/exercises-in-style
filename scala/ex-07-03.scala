package object random {
  private val a: Int = 1664525
  private val b: Int = 1013904223
  private val n: Int = 32
  private var prevSeed: Int = 0

  def nextInt(): Int = {
    prevSeed = prevSeed * a + (b % (2 ^ n))
    prevSeed
  }

  def nextDouble(): Double = {
    prevSeed = prevSeed * a + (b % (2 ^ n))
    prevSeed
  }

  def setSeed(seed: Int): Unit = {
    prevSeed = seed
  }
}

import random._

object TestDeCaz extends App{
  random.setSeed(1)
  println(random.nextInt())
  println(random.nextDouble())
  println(random.nextInt())
  println(random.nextDouble())
}

object Suits extends Enumeration {
  val SPADES = Value("♠")
  val HEARTS = Value("♥")
  val DIAMONDS = Value("♦")
  val CLUBS = Value("♣")

  def color(suit: Suits.Value): String = {
    var res: String = ""
    if (suit == SPADES || suit == CLUBS) {
      res = "Black"
    }
    else {
      res = "Red"
    }
    res
  }
}

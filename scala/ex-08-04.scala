abstract class Item {
  def price: Double
  def description: String
}

class SimpleItem(var price: Double, var description: String) extends Item {

}

class Boundle extends Item {
  import scala.collection.mutable.ArrayBuffer

  private var items: ArrayBuffer[Item] = ArrayBuffer[Item]()

  def add(item: Item): Unit = {
    items += item
  }

  def price: Double = {
    var res: Double = 0
    for (item <- items) {
      res += item.price
    }
    res
  }

  def description: String = {
    var res: String = "This boundle contains:\n"
    for (item <- items) {
      res += "\t" + item.description + "\n"
    }
    res
  }
}

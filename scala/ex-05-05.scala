import scala.beans.BeanProperty

class Person {
  @BeanProperty var name: String = ""
  @BeanProperty var id: Long = 0
}

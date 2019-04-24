object Copy extends App{
  import scala.collection.mutable.{HashMap => ScalaHashMap, Map => ScalaMap}
  import java.util.{HashMap => JavaHashMap, Map => JavaMap}
  import collection.JavaConversions.mapAsScalaMap
  
var s: ScalaMap[Int, String] = new ScalaHashMap[Int, String]()
  s(1) = "uno"
  s(2) = "due"
  println(s)

  var j: JavaMap[Int, String] = new JavaHashMap[Int, String]()
  j(1) = s(1)
  j(2) = s(2)
  println(j)
}

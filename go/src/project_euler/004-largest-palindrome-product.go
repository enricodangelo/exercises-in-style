package main

import (
    "fmt"
    "strconv"
    "math"
)

func main() {
    var largest int64 = 0

    for i := int64(999); i > 0; i-- {
        for j := int64(999); j > 0; j-- {
                var x int64 = i * j
                var str string = strconv.FormatInt(x, 10)
                var isPalindrome bool = true

                var half float64 = math.Floor(float64(len(str))/float64(2))
                for c := float64(0); c <= half; c++ {
                    if str[int(c)] == str[len(str) - int(c) - 1] {
                        isPalindrome = isPalindrome && true
                    } else {
                        isPalindrome = false
                        break
                    }
                }

                if isPalindrome && len(strconv.FormatInt(i, 10)) == 3 && len(strconv.FormatInt(j, 10)) == 3{
                    if x > largest{
                        largest = x
                    }
                }
        }
    }

    fmt.Println("\n", largest)
}

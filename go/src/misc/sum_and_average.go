package main

import (
    "fmt"
)

func main() {
// Creo uno slice
//    var arr = []int{7, 8, 9, 10, 11}
//    var s, a = SumAndAverage(arr)

// Creo un array e passo lo slice alla funzione
    var arr [5]int = [5]int{7, 8, 9, 10, 11}
    var s, a = SumAndAverage(arr[:])

    fmt.Printf("sum = %d, average = %f\n", s, a);
}

func SumAndAverage(a []int) (int, float32) {
    var sum int = 0
    var average float32 = 0.0
    for i := 0; i < len(a); i++ {
        sum += a[i]
    }
    average = float32(sum) / float32(len(a))
    return sum, average
}

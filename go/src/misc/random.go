package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	timens := int64(time.Now().Nanosecond())
	//senza seed sono sempre uguali, ad ogni esecuzione!
	rand.Seed(timens)
	for i := 0; i < 10; i++ {
		a := rand.Int()
		fmt.Println(a)
	}
}

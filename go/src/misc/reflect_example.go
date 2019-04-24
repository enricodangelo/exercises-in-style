package main

import (
	"fmt"
	"reflect"
)

func main() {
	var x float32 = 7.7

	fmt.Printf("type of x: %v, value of x: %v\n", reflect.TypeOf(x), reflect.ValueOf(x))

	fmt.Printf("type of value of x: %v\n", reflect.ValueOf(x).Type())

	fmt.Printf("kind of type of x: %v, kind of value of x: %v\n", reflect.TypeOf(x).Kind(), reflect.ValueOf(x).Kind())

	fmt.Printf("value as float of value of x: %v\n", reflect.ValueOf(x).Float())

	if reflect.ValueOf(x).CanSet() {
		reflect.ValueOf(x).SetFloat(5.5)
		fmt.Printf("1. value as float of value of x after set: %v\n", reflect.ValueOf(x).Float())
	}

	if reflect.ValueOf(&x).CanSet() {
		reflect.ValueOf(&x).SetFloat(5.5)
		fmt.Printf("2. value as float of value of x after set: %v\n", reflect.ValueOf(&x).Float())
	}

	if reflect.ValueOf(&x).Elem().CanSet() {
		reflect.ValueOf(&x).Elem().SetFloat(5.5)
		fmt.Printf("3. value as float of value of x after set: %v\n", reflect.ValueOf(x).Float())
	}
}

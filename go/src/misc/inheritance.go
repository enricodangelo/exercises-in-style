package main

import (
	"fmt"
)

type Engine struct {
	sound string
}

type Car struct {
	// se metto una struttra embedded eredito tutti i suoi metodi
	Engine
	color string
}

func (e *Engine) romba() {
	fmt.Printf("%s\n", e.sound)
}

func main() {
	var car Car = Car{Engine{"Brum brum!!"}, "rossa"}

	// Car eredita i metodi di Engine, quindi posso chiamare romba() su Car
	car.romba()
}

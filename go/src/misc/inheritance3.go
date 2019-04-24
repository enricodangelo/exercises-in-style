package main

import (
	"fmt"
)

type Engine struct {
	sound string
}

type Altro struct {
}

type Car struct {
	// se meto una struttra embedded eredito tutti i suoi metodi
	Engine
	Altro
	color string
}

func (e *Engine) romba() {
	fmt.Printf("%s\n", e.sound)
}

func (a *Altro) romba() {
	fmt.Printf("Che porcodio succede adesso?\n")
}

//questa funzione offusca ogni altra eventuale funzione "romba" ereditata
func (c *Car) romba() {
	fmt.Printf("Dio madonna se romba!!!\n")
}

func main() {
	var car Car = Car{Engine{"Brum brum!!"}, Altro{}, "rossa"}

	// Car eredita i metodi di Engine, quindi posso chiamare romba() su Car
	//ERORRE
	//car.romba()

	//se uso il selettore col tipo embedded posso invocare la funzione offuscata
	car.Engine.romba()
	car.Altro.romba()

	car.romba()
}

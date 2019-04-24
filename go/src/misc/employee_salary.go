package main

import (
	"fmt"
)

type Employee struct {
	name   string
	salary float32
}

//qua deve essere unpuntatore o il valore non viene modificato sul chiamante!
func (this *Employee) giveRaise(amount float32) {
	this.salary += this.salary * amount
}

func main() {
	var enrico Employee = Employee{"Enrico", 25000}

	// dereferenzia l'oggetto in automatico
	enrico.giveRaise(0.25)
	// va bene anche (&enrico).giveRaise(0.25)

	fmt.Printf("enrico = %v\n", enrico)
}

package main

import (
	"fmt"
)

func main() {
	var nome, cognome string
	fmt.Scanf("%s %s", &nome, &cognome)
	fmt.Printf("Ciao %s %s\n", nome, cognome)
}

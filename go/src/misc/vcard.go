package main

import (
	"fmt"
)

type address struct {
	via       string
	civico    string
	citta     string
	provincia string
	cap_ita   string
}

type vcard struct {
	nome    string
	cognome string
	eta     int
	//indirizzo address
	indirizzo *address
}

func main() {
	// se address e' value type
	//var io vcard = vcard{"Enrico", "D'Angelo", 31, address{"Via G. Amendola", "8", "Viserba", "RN", "47922"}}
	// se address e' reference type
	var io vcard = vcard{"Enrico", "D'Angelo", 31, &address{"Via G. Amendola", "8", "Viserba", "RN", "47922"}}

	// se address e' value type
	//fmt.Printf("La mia vcard: %v\n", io)
	// se address e' reference type
	fmt.Printf("La mia vcard: %v. Indirizzo: %v\n", io, io.indirizzo)
}

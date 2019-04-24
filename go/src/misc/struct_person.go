package main

import (
    "fmt"
    "strings"
)

type Person struct {
    firstName string
    lastName string
}

func upPerson(p *Person) {
    p.firstName = strings.ToUpper(p.firstName)
    p.lastName = strings.ToUpper(p.lastName)
}

func main() {
    // Value type
    var person1 Person
    person1.firstName = "Enrico"
    person1.lastName = "D'Angelo"

    // NEW pointer alla struttura
    person2 := new(Person)
    person2.firstName = "Enrico"
    person2.lastName = "D'Angelo"

    // literal pointer
    person3 := &Person{"Enrico", "D'Angelo"}

    //literal value
    person4 := Person{"Enrico", "D'Angelo"}

    upPerson(&person1)
    //upPerson(person1)   //errore, non e' un puntatore
    upPerson(person2)
    upPerson(person3)
    upPerson(&person4)
    //upPerson(person4)   //errore, non e' un puntatore

    fmt.Printf("person1 = %v\n", person1)
    fmt.Printf("person1 = %v\n", person2)
    fmt.Printf("person1 = %v\n", person3)
    fmt.Printf("person1 = %v\n", person4)
}

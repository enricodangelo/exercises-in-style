package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
)

type Address struct {
	Type    string
	City    string
	Country string
}

type VCard struct {
	FirstName string
	LastName  string
	Addresses []*Address
	Remark    string
}

func main() {
	bytes, err := ioutil.ReadFile("vcard.enrico.json")
	if err != nil {
		log.Fatal(err)
	}
	var v VCard
	json.Unmarshal(bytes, &v)
	fmt.Printf("JSON format: %v\n", v)
	fmt.Printf("JSON format: %v\n", v.Addresses[0])
	fmt.Printf("JSON format: %v\n", v.Addresses[1])
}

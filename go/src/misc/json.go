package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"log"
	"os"
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
	pa := &Address{"private", "Aartselaar", "Belgium"}
	wa := &Address{"work", "Boom", "Belgium"}
	vc := VCard{"Jan", "Kersschot", []*Address{pa, wa}, "none"}
	fmt.Printf("%v: \n", vc)
	// {Jan Kersschot [0x126d2b80 0x126d2be0] none // JSON format:
	js, _ := json.Marshal(vc)
	jsEscaped := new(bytes.Buffer)
	json.HTMLEscape(jsEscaped, js) //fa escape di caratter per essere messo nei tag <script>
	fmt.Printf("JSON format: %s\n", js)

	file, err := os.OpenFile("vcard.json", os.O_CREATE|os.O_WRONLY, 0)
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	enc := json.NewEncoder(file)
	errE := enc.Encode(vc)
	if errE != nil {
		log.Fatal(errE)
	}
}

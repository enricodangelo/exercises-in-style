package main

import (
	"encoding/csv"
	"fmt"
	"log"
	"os"
	"strconv"
)

type bookDesc struct {
	title    string
	price    float64
	quantity int64
}

func (this bookDesc) String() string {
	return fmt.Sprintf("Book Description: [%s, %f, %d]", this.title, this.price, this.quantity)
}

func main() {
	if len(os.Args) != 2 {
		//log.Panic("Inserisci il nome del file CSV")
		//os.Exit(-1)
		log.Fatal("Inserisci il nome del file CSV")
	}

	file, err := os.Open(os.Args[1])
	if err != nil {
		log.Fatal("Impossibile aprire il file ", os.Args[1])
	}

	r := csv.NewReader(file)
	//setto il delimitatore a ';'
	r.Comma = ';'

	allRecords, err := r.ReadAll()
	if err != nil {
		log.Fatal(err)
	}

	for i := range allRecords {
		title := allRecords[i][0]
		price, err1 := strconv.ParseFloat(allRecords[i][1], 64)
		if err1 != nil {
			log.Fatal(err1)
		}
		qty, err2 := strconv.ParseInt(allRecords[i][2], 10, 64)
		if err2 != nil {
			log.Fatal(err2)
		}
		var bd bookDesc = bookDesc{title, price, qty}
		fmt.Println(bd)
	}
}

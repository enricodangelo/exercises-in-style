package main

import (
	"bufio"
	"io/ioutil"
	"log"
	"os"
)

type Page struct {
	Title string
	Body  []byte
}

func (this *Page) Save() {
	f, fErr := os.OpenFile(this.Title, os.O_CREATE|os.O_WRONLY|os.O_TRUNC, 0666)
	if fErr != nil {
		log.Fatal(fErr)
	}
	defer f.Close()

	writer := bufio.NewWriter(f)
	defer writer.Flush()

	_, wErr := writer.Write(this.Body)
	if wErr != nil {
		log.Fatal(wErr)
	}
}

func Load(fileName string) Page {
	f, fErr := os.OpenFile(fileName, os.O_RDONLY, 0666)
	if fErr != nil {
		log.Fatal(fErr)
	}
	defer f.Close()

	reader := bufio.NewReader(f)

	b, rErr := ioutil.ReadAll(reader)
	if rErr != nil {
		log.Fatal(rErr)
	}

	//var page *Page = new(Page)
	//page.Title = fileName
	//page.Body = b
	var page Page = Page{fileName, b}
	return page
}

func main() {
	//
}

package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
)

func main() {
	outputFile, outputError := os.OpenFile("output.dat", os.O_WRONLY|os.O_CREATE, 0666)
	if outputError != nil {
		log.Fatal(outputError)
	}
	defer outputFile.Close()
	outputWriter := bufio.NewWriter(outputFile)
	outputString := "cacca merda\n"

	for i := 0; i < 10; i++ {
		j, err := outputWriter.WriteString(outputString)
		fmt.Println("Scritti ", j, "bytes")
		if err != nil {
			fmt.Println(err)
		}
	}
	outputWriter.Flush()
}

package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

func main() {
	var fileName string
	fmt.Printf("Please enter a file name: ")
	fmt.Scan(&fileName)

	inputFile, inputError := os.Open(fileName)

	if inputError != nil {
		fmt.Printf("An error occured on opening the inputfile \"%s\"\n"+
			"Does the file exists?i\n", fileName)
		return
	}

	defer inputFile.Close() //la chiamata viene rimandata all'uscita da questa funzione

	inputReader := bufio.NewReader(inputFile)
	for {
		inputString, readerError := inputReader.ReadString('\n')

		if readerError == io.EOF {
			return
		}
		fmt.Printf(inputString)
	}
}

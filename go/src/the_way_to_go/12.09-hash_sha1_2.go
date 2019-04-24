package main

import (
    "fmt"
    "bufio"
    "os"
    "crypto/sha1"
)

func main() {
    hasher := sha1.New()
    inputReader := bufio.NewReader(os.Stdin)
    b := []byte{}

    for {
        input, err := inputReader.ReadString('\n')
        if err != nil {
            fmt.Println("Error: ", err)
            return
        }
        if input == "quit\n" {
            fmt.Println("Exiting...")
            return
        }
        hasher.Write([]byte(input[:len(input)-1]))
        fmt.Printf("Result: %x\n", hasher.Sum(b))
        fmt.Printf("Result: %d\n", hasher.Sum(b))
    }
}

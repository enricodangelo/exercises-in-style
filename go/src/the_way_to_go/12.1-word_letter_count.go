/*
 * Write a program which reads text from the keybord. When the user enters ‘S’ in order to signal the
 * end of the input, the program shows 3 numbers:
 *  i)   the number of characters including spaces (but excluding ‘\r’ and ‘\n’)
 *  ii)  the number of words
 *  iii) the number of lines
 */

package main

import (
    "fmt"
    "os"
    "bufio"
)

func main() {
    var chars int = 0
    var words int = 0
    var lines int = 0
    bReader := bufio.NewReader(os.Stdin)

    for {
        input, err := bReader.ReadString('\n')

        if err != nil {
            fmt.Println("Errore in lettura: ", err)
            return
        }

        switch (input) {
        case "S\n", "S\r\n":
            fmt.Println("Characters = ", chars, ", words = ", words, ", lines = ", lines)
        default:
            chars += len(input) - 1
            lines++
        }
    }
}

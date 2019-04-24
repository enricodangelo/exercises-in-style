package main

import "fmt"

func main() {
	/* se s e' stringa l'array sottostante e' immutabile */
	//var s string = "Stringa"
	/* se s e' un array di byte e' mutabile */
	var s [7]byte = [7]byte{'S', 't', 'r', 'i', 'n', 'g', 'a'}
	sl := s[:]

	fmt.Printf("s = %s\n", s)

	for i := 0; i < len(sl); i++ {
		/* se lo slice e' di una stringa, che e' un array immutabile, non posso assegnare */
		sl[i] = 'a'
	}

	fmt.Printf("sl = %s\n", sl)
	fmt.Printf("s = %s\n", s)
}

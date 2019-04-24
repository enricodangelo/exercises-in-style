/*
Chandu's girlfriend loves arrays that are sorted in non-increasing order. Today is her birthday. Chandu wants to give her some sorted arrays on her birthday. But the shop has only unsorted arrays. So, Chandu bought T unsorted arrays and is trying to sort them. But, he doesn't have much time to sort the arrays manually as he is getting late for the birthday party. So, he asked you to write a program to sort the T arrays in non-increasing order. Help him, or his girlfriend will kill him.

Input:
First line contains an integer T, denoting the number of test cases.
First line of each test case contains an integer N, denoting the size of the array.
Second line contains N space separated integers, denoting the array elements Ai.

Output:
For each test case, print the sorted array in non-increasing order.

Constraints:
1 <= T <= 100
1 <= N <= 105
0 <= Ai <= 109

Sample Input
 2
 5
 2 5 2 4 3
 5
 5 4 2 3 1

Sample Output
 5 4 3 2 2
 5 4 3 2 1
*/

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	tString, _ := reader.ReadString('\n')
	t, _ := strconv.Atoi(tString)

	for i := 0; i < t; i++ {
		nString, _ := reader.ReadString('\n')
		n, _ := strconv.Atoi(nString)
	}
	fmt.Println("Enter text: ")
	text2 := ""
	fmt.Scanln(text2)
	fmt.Println(text2)

	ln := ""
	fmt.Sscanln("%v", ln)
	fmt.Println(ln)
	fmt.Println("Hello World!")
}

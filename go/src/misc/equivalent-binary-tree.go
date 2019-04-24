package main

import "code.google.com/p/go-tour/tree"
import "fmt"

// Walk walks the tree t sending all values
// from the tree to the channel ch.
func Walk(t *tree.Tree, ch chan int) {
		if t.Left != nil {
					Walk(t.Left, ch)
						}
							ch <- t.Value
								if t.Right != nil {
									Walk(t.Right, ch)
												}
											}

											// Same determines whether the trees
											// t1 and t2 contain the same values.
											func Same(t1, t2 *tree.Tree) bool {
													var ch1 chan int = make(chan int)
														var ch2 chan int = make(chan int)
															go Walk(t1, ch1)
																go Walk(t2, ch2)
																	
																	for range(ch1)
																		var x int = <- ch1

																			return false
																		}

																		func main() {
																				if Same(tree.New(1), tree.New(1)) {
																							fmt.Println("sono uguali")
																								} else {
																											fmt.Println("non sono uguali")
																												}
																													if Same(tree.New(1), tree.New(2)) {
																																fmt.Println("sono uguali")
																																	} else {
																																				fmt.Println("non sono uguali")
																																					}
																																				}


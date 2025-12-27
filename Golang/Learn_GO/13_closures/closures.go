package main

import "fmt"

func main() {

	increment := Counter()

	// Increment 1 :: 1
	// Increment 2 :: 2

	fmt.Println("Increment 1 ::", increment())
	fmt.Println("Increment 2 ::", increment())
}

func Counter() func() int {
	count := 0

	return func() int {
		count += 1
		return count
	}
}

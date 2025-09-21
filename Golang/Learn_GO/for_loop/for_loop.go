package main

import "fmt"

func main() {

	// while loop
	loop1()

	// classic for loop
	loop2()

	// range
	loop3()

}

func loop1() {
	count := 0

	for {
		count++

		fmt.Println("Count :", count)
		if count == 10 {
			break
		}
	}
}

func loop2() {
	for i := 0; i < 10; i++ {
		fmt.Println("Value of i :", i)
	}
}

func loop3() {
	for i := range 4 {
		fmt.Println("Range :", i)
	}
}

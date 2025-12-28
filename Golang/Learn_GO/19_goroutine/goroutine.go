package main

import (
	"fmt"
	"time"
)

func task(num int) {
	fmt.Println("inside task", num)
}

func main() {

	for i := 1; i <= 10; i++ {
		// it will run 10 parallel light-weight threads
		go task(i)
	}

	fmt.Println("===============")

	// inplace function call
	for i := 11; i <= 15; i++ {

		go func(num int) {
			fmt.Println("inplace func call", num)
		}(i)
	}

	time.Sleep(time.Second * 2)

	// inside task 3
	// ===============
	// inside task 10
	// inside task 4
	// inplace func call 11
	// inside task 2
	// inplace func call 12
	// inplace func call 15
	// inside task 8
	// inside task 9
	// inside task 1
	// inside task 5
	// inside task 6
	// inplace func call 14
	// inside task 7
	// inplace func call 13

}

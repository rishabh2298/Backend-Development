package main

import "fmt"

func main() {
	num := 1

	// pass by value
	changeNum1(num)
	fmt.Println("main call change-num 1 ::", num)

	// pass by reference
	changeNum2(&num)
	fmt.Println("main call change-num 2 ::", num)

	// inside change-num 1 :: 5
	// main call change-num 1 :: 1
	// inside change-num 2 :: 5
	// main call change-num 2 :: 5

}

func changeNum1(num int) {
	num = 5
	fmt.Println("inside change-num 1 ::", num)
}

func changeNum2(num *int) {
	*num = 5
	fmt.Println("inside change-num 2 ::", *num)
}

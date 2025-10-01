package main

import "fmt"

func main() {
	fmt.Println("Working on if-else statements")

	check1()
	check2()
}

func check1() {
	age := 10

	if age <= 5 {
		fmt.Println("It's a child")
	} else if age > 5 && age <= 10 {
		fmt.Println("It's a child with little sense")
	} else {
		fmt.Println("It's a child with age +10")
	}

}

func check2() {

	if age := 20; age < 21 {
		fmt.Println("kid is under age for giving vote")
	} else {
		fmt.Println("Kid is at right age for giving vote")
	}
}

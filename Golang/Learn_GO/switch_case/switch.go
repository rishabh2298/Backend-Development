package main

import (
	"fmt"
	"time"
)

func main() {

	// single switch
	check1()
	// Multi switch
	check2()
	// type switch
	check3()
}

func check1() {
	a := 5

	switch a {
	case 1:
		fmt.Println("Value is 1")
	case 2:
		fmt.Println("Value is 2")
	case 3:
		fmt.Println("Value is 3")
	default:
		fmt.Println("Value is greater than 3")

	}
}

func check2() {
	day := time.Now().Weekday()

	switch day {
	case time.Saturday, time.Sunday:
		{
			fmt.Println("This is weekend")
		}
	case time.Monday:
		{
			fmt.Println("This is Monday")
		}
	case time.Tuesday:
		{
			fmt.Println("This is Tuesday")
		}
	case time.Wednesday:
		{
			fmt.Println("This is Wednesday")
		}
	}
}

func check3() {

	typeFunc := func(value interface{}) {

		switch value.(type) {
		case int:
			fmt.Println("This is an integer")
		case string:
			fmt.Println("This is an string")
		default:
			fmt.Println("This is other")
		}
	}

	typeFunc(23.3)
}

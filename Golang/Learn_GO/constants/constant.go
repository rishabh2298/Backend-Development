package main

import "fmt"

const name5 = "harish"

var name6 = "pankaj"

const (
	name2 = "shantanu"
	name3 = "shanky"
	name4 = "ajay"
)

func main() {
	const name = "rishabh"
	fmt.Println("Name :", name)

	var age = 27
	fmt.Println("Age :", age)

	var (
		pincode = 110077
		address = "Dwarka"
		rent    = 8500.00
	)

	fmt.Println("Pincode :", pincode)
	fmt.Println("Address :", address)
	fmt.Println("Rent :", rent)

	fmt.Println("Name 2 :", name2)
	fmt.Println("Name 3 :", name3)
	fmt.Println("Name 4 :", name4)
	fmt.Println("Name 5 :", name5)
	fmt.Println("Name 6 :", name6)

}

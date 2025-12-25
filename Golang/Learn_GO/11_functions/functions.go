package main

import "fmt"

func main() {

	// basic function
	firstFunc(10, 20)

	fn := func(a, b int) int {
		return a + b + 100
	}

	// function as parameter
	fmt.Println("secondFunc ::", secondFunc(fn))

	// function as return type
	fncall := thirdFunc()
	fmt.Println("thirdFunc ::", fncall(2, 3))

}

func firstFunc(a, b int) {
	fmt.Println("firstFunc ::", a+b)
}

func secondFunc(fn func(a, b int) int) int {
	ans := fn(2, 3) + 10
	return ans
}

func thirdFunc() func(a, b int) int {
	return func(a, b int) int {
		return a + b + 10
	}
}

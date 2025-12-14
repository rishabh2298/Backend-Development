package main

import "fmt"

func main() {

	// slice operator
	// cap(), len()
	// slices.Equals()

	// var arr = make([]int, 2, 5)
	makeFunc()

	// arr := []int {}
	directFunc()

	// var mat [][]int
	twoDSlices()
}

func makeFunc() {
	var arr = make([]int, 3, 5)

	arr = append(arr, 2)
	arr = append(arr, 3, 4)

	fmt.Println("makeFunc arr :: ", arr)
	fmt.Println("makeFunc arr :: ", len(arr))
	fmt.Println("makeFunc arr :: ", cap(arr))
	fmt.Println("makeFunc arr 4th val :: ", arr[3])

	//slice operator
	fmt.Println("makeFunc arr :: ", arr[1:4])

	/*
		makeFunc arr ::  [0 0 0 2 3 4]
		makeFunc arr ::  6
		makeFunc arr ::  10
		makeFunc arr 4th val ::  2
		makeFunc arr ::  [0 0 2]
	*/
}

func directFunc() {
	arr := []int{} // not nil
	var arr2 []int // nil

	fmt.Println("directFunc :: ", arr)
	fmt.Println("directFunc :: ", len(arr))
	fmt.Println("directFunc :: ", cap(arr))
	fmt.Println("directFunc :: ", arr == nil)
	fmt.Println("directFunc :: ", arr2 == nil)
	fmt.Println("directFunc :: ", arr2)

	/*
		directFunc ::  []
		directFunc ::  0
		directFunc ::  0
		directFunc ::  false
		directFunc ::  true
		directFunc ::  []
	*/
}

func twoDSlices() {
	var mat [][]int

	for i := 0; i < 5; i++ {
		inner := []int{}
		for j := 11; j < 15; j++ {
			inner = append(inner, j)
		}
		mat = append(mat, inner)
	}

	fmt.Println("2-D slice :: ", mat)

	// 2-D slice ::  [
	//                [11 12 13 14] [11 12 13 14] [11 12 13 14]
	//                [11 12 13 14] [11 12 13 14]
	//               ]
}

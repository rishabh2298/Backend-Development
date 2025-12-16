package main

import "fmt"

func main() {

	sliceFunc()

	mapFunc()

	strFunc()

}

func sliceFunc() {
	arr := []int{4, 5, 6, 7}

	for i, v := range arr {
		fmt.Println("Index :", i, "Value :", v)
	}

	/*
		Index : 0 Value : 4
		Index : 1 Value : 5
		Index : 2 Value : 6
		Index : 3 Value : 7
	*/
}

func mapFunc() {
	m := map[string]int{"one": 1, "two": 2, "three": 3, "four": 4}

	for k, v := range m {
		fmt.Println("key : ", k, "value : ", v)
	}

	/*
		key :  one value :  1
		key :  two value :  2
		key :  three value :  3
		key :  four value :  4
	*/
}

func strFunc() {
	str := "golang"

	for i, c := range str {
		fmt.Println("index :", i, "value :", string(c))
	}

	/*
		index : 0 value : 103
		index : 1 value : 111
		index : 2 value : 108
		index : 3 value : 97
		index : 4 value : 110
		index : 5 value : 103

		index : 0 value : g
		index : 1 value : o
		index : 2 value : l
		index : 3 value : a
		index : 4 value : n
		index : 5 value : g
	*/
}

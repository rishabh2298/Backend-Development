package main

import (
	"fmt"
)

// generic function
func printSlice[T any](arr []T) {
	for _, v := range arr {
		fmt.Print(v, " ")
	}
	fmt.Println()
}

// only 3 types allowed
func printSlice2[T int | string | bool](arr []T) {
	for _, v := range arr {
		fmt.Print(v, " ")
	}
	fmt.Println()
}

// to avoid mutiple pipes (|) for common dataTypes
func printSlice3[T comparable](arr []T) {
	for _, v := range arr {
		fmt.Print(v, " ")
	}
	fmt.Println()
}

func printSlice4[T any, V string](arr []T, user V) {
	fmt.Print("\nProcessing for user ::", user, "\n")
	for _, v := range arr {
		fmt.Print(v, " ")
	}
	fmt.Println()
}

// =======================================

// Struct generics
type Stack[T any] struct {
	elements []T
}

func main() {

	// any / interface{}
	// function generics
	arr1 := []int{1, 2, 3, 4, 5}
	names1 := []string{"golang", "java", "sql", "nosql"}

	printSlice(arr1)
	printSlice(names1)

	// multiple types (string | int | bool)
	bool1 := []bool{true, false, false, true}
	printSlice2(bool1)

	// comparable (to avoid mutiple or (|) operator (safer than "any" or "interface{}" keyword)
	printSlice3(arr1)
	printSlice3(bool1)

	// multiple generics [T any, V string]
	printSlice4(names1, "john")

	// ===================================

	// struct generics

	stack1 := Stack[int]{
		elements: []int{1, 2, 3, 4, 5},
	}
	fmt.Println("Stack struct ::", stack1)

	stack2 := Stack[string]{
		elements: []string{"golang", "java", "javascript", "python"},
	}
	fmt.Println("Stack struct ::", stack2)

}

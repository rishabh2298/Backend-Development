package main

import "fmt"

func main() {

	// default values
	zeroedValues()

	inPlaceAllocation()

	twoDArrays()
}

func zeroedValues() {
	// int
	var nums [5]int

	nums[4] = 123

	fmt.Println("int ::", nums)
	fmt.Println("int ::", len(nums))
	fmt.Println("int ::", nums[4])

	// bool
	var status [4]bool

	status[2] = true

	fmt.Println("bool ::", status)
	fmt.Println("bool ::", len(status))
	fmt.Println("bool ::", status[2])

	// string
	var str [5]string

	str[4] = "golang"

	fmt.Println("string ::", str)
	fmt.Println("string ::", len(str))
	fmt.Println("string ::", str[4])

}

func inPlaceAllocation() {
	var arr = [3]int{1, 2, 3}
	fmt.Println("1-D arr :: ", arr)

	var arrs = [2][3]int{{1, 2, 3}, {4, 5, 6}}
	fmt.Println("2-D arrs :: ", arrs)

}

func twoDArrays() {
	fmt.Println("====================================")

	var arr [5][8]int

	fmt.Println("2-D arr :: ", arr)
	fmt.Println("2-D arr :: ", len(arr), len(arr[0]))

	for i := 0; i < len(arr); i++ {
		for j := 0; j < len(arr[i-1]); j++ {
			arr[i][j] = i + j + 1
		}
	}

	fmt.Println("2-D arr :: ", arr)
}

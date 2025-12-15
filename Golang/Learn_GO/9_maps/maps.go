package main

import (
	"fmt"
	"maps"
)

func main() {

	// m[key] = value
	// delete(m, key)
	// value, ok := m[key]
	// maps.Equals(map1, map2) to check if equal or not

	// m = make(map[key]value)
	makeFunc()

	// m := map[]
	directFun()

}

func makeFunc() {

	var mp = make(map[string]int)

	fmt.Println("makeFunc :: ", mp)
	fmt.Println("makeFunc :: ", len(mp))

	mp["one"] = 1
	mp["two"] = 2
	mp["three"] = 3

	fmt.Println("makeFunc :: ", mp)
	fmt.Println("makeFunc :: ", len(mp))
	fmt.Println("makeFunc :: ", mp["three"])

	delete(mp, "two")

	fmt.Println("makeFunc :: ", mp)
	fmt.Println("makeFunc :: ", len(mp))

	/*
		makeFunc ::  map[]
		makeFunc ::  0
		makeFunc ::  map[one:1 three:3 two:2]
		makeFunc ::  3
		makeFunc ::  3
		makeFunc ::  map[one:1 three:3]
		makeFunc ::  2
	*/
}

func directFun() {
	m1 := map[string]int{"one": 1, "two": 2}
	m2 := map[string]int{"one": 1, "two": 2}

	fmt.Println("directFun :: ", m1)
	fmt.Println("directFun :: ", m2)
	fmt.Println("directFun :: ", maps.Equal(m1, m2))

	/*
		directFun ::  map[one:1 two:2]
		directFun ::  map[one:1 two:2]
		directFun ::  true
	*/
}

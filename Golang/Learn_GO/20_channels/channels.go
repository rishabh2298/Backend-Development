package main

import (
	"fmt"
	"math/rand"
	"time"
)

func singleDataFunc() {
	var strChannel = make(chan string)

	go func(ch chan string) {
		fmt.Println("Channel output singleDataFunc ::", <-ch)
	}(strChannel)

	strChannel <- "Hello from channel"
}

func infiniteDataFunc() {
	numChannel := make(chan int)

	go func(num chan int) {
		for n := range num {
			fmt.Println("output infiniteDataFunc ::", n)
			// so that output is slowly visible
			time.Sleep(time.Second)
		}
	}(numChannel)

	for {
		numChannel <- rand.Intn(100)
	}
}

func receiveData() {
	numChannel := make(chan int)

	go func(numChan chan int, num1, num2 int) {
		result := num1 * num2
		fmt.Println("setting channel input receiveData ... ")
		numChan <- result
	}(numChannel, 5, 5)

	fmt.Println("output reciveData ::", <-numChannel)
}

func main() {
	// channels (used as a pipe by 2 goroutines to talk with each other)

	// CASE I :: SENDING data to Goroutine
	// single data transfer channel
	singleDataFunc()

	// infinite data transfer channel
	infiniteDataFunc()

	// CASE II :: RECEIVING data from Goroutine
	receiveData()

	fmt.Println("main func completed ...")

	// OUTPUT :: singleDataFunc()
	// Channel output singleDataFunc :: Hello from channel

	// OUTPUT :: infiniteDataFunc()
	// output infiniteDataFunc :: 80
	// output infiniteDataFunc :: 47
	// output infiniteDataFunc :: 71
	// output infiniteDataFunc :: 52
	// output infiniteDataFunc :: 84

	// receiveData()
	// setting channel input receiveData ...
	// output reciveData :: 25
	// main func completed ...
}

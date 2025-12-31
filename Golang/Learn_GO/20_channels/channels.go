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

func bufferedChannel() {
	// buffered channel
	emailChannel := make(chan string, 10)
	// unbuffered channel
	done := make(chan bool)

	go func(emailChh chan string, done chan bool) {
		defer func() { done <- true }()
		for val := range emailChh {
			fmt.Println("sending email to", val)
			// to make output visible
			time.Sleep(time.Millisecond * 500)
		}
	}(emailChannel, done)

	for i := 1; i <= 10; i++ {
		emailChannel <- fmt.Sprintf("exmaple%d@gmail.com", i)
	}
	fmt.Println("email queuing completed ...")

	close(emailChannel)
	<-done
}

func multiChannel() {
	chan1 := make(chan int)
	chan2 := make(chan string)

	go func() {
		chan1 <- 10
		fmt.Println("chan 1 data inserted multiChannel...")
	}()
	go func() {
		chan2 <- "Hello World"
		fmt.Println("chan 2 data inserted multiChannel...")
	}()

	for i := 1; i <= 2; i++ {
		select {
		case chan1Val := <-chan1:
			{
				fmt.Println("Value of chan 1 multiChannel ::", chan1Val)
			}
		case chan2Val := <-chan2:
			{
				fmt.Println("Value of chan 2 multiChannel ::", chan2Val)
			}
		}
	}
}

func typeSafty() {
	chan1 := make(chan int)
	chan2 := make(chan bool)

	// closures
	go func() { chan2 <- true }()

	// channel can send-only data
	go func(channel1 chan<- int) {
		fmt.Println("sending data into channel 1")
		channel1 <- 26
	}(chan1)

	// channel can receive-only data
	go func(channel2 <-chan bool) {
		fmt.Println("receive data from channel 2 ::", <-channel2)
	}(chan2)

	fmt.Println("data from channel 1 ::", <-chan1)
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

	// CASE III :: Buffered Channel
	bufferedChannel()

	// CASE IV :: Multi-channel
	multiChannel()

	// CASE V :: type-safty on channel (Only recive or Only send allow in func())
	typeSafty()

	fmt.Println("main func completed ...")

	// OUTPUT I :: singleDataFunc()
	// Channel output singleDataFunc :: Hello from channel

	// OUTPUT I :: infiniteDataFunc()
	// output infiniteDataFunc :: 80
	// output infiniteDataFunc :: 47
	// output infiniteDataFunc :: 71
	// output infiniteDataFunc :: 52
	// output infiniteDataFunc :: 84

	// OUTPUT II :: receiveData()
	// setting channel input receiveData ...
	// output reciveData :: 25
	// main func completed ...

	// OUTPUT III :: bufferedChannel()
	// email queuing completed ...
	// sending email to exmaple1@gmail.com
	// sending email to exmaple2@gmail.com
	// sending email to exmaple3@gmail.com
	// sending email to exmaple4@gmail.com
	// sending email to exmaple5@gmail.com
	// sending email to exmaple6@gmail.com
	// sending email to exmaple7@gmail.com
	// sending email to exmaple8@gmail.com
	// sending email to exmaple9@gmail.com
	// sending email to exmaple10@gmail.com

	// OUTPUT IV :: multiChannel()
	// chan 2 data inserted multiChannel...
	// Value of chan 2 multiChannel :: Hello World
	// chan 1 data inserted multiChannel...
	// Value of chan 1 multiChannel :: 10
	// main func completed ...

	// OUTPUT V :: typeSafty()
	// receive data from channel 2 :: true
	// sending data into channel 1
	// data from channel 1 :: 26
	// main func completed ...

}

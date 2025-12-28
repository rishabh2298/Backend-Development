package main

import (
	"fmt"
	"sync"
	"time"
)

func task(num int) {
	fmt.Println("inside task", num)
}

func sleepFunc() {

	for i := 1; i <= 10; i++ {
		// it will run 10 parallel light-weight threads
		go task(i)
	}

	fmt.Println("===============")

	// inline function call
	for i := 11; i <= 15; i++ {

		go func(num int) {
			fmt.Println("inplace func call", num)
		}(i)
	}

	// this waste extra remain time
	time.Sleep(time.Second * 2)

	// inside task 3
	// ===============
	// inside task 10
	// inside task 4
	// inplace func call 11
	// inside task 2
	// inplace func call 12
	// inplace func call 15
	// inside task 8
	// inside task 9
	// inside task 1
	// inside task 5
	// inside task 6
	// inplace func call 14
	// inside task 7
	// inplace func call 13

}

func waitTask(num int, wg *sync.WaitGroup) {
	defer wg.Done()
	fmt.Println("inside waitTask", num)
}

func waitgroupFunc() {

	var wg sync.WaitGroup

	for i := 1; i <= 10; i++ {
		wg.Add(1)
		go waitTask(i, &wg)
	}

	wg.Wait()

	// inside waitTask 3
	// inside waitTask 10
	// inside waitTask 4
	// inside waitTask 5
	// inside waitTask 6
	// inside waitTask 7
	// inside waitTask 8
	// inside waitTask 9
	// inside waitTask 1
	// inside waitTask 2
	// main func completed...
}

func main() {
	// this will waste programs extra time (as using time.Sleep())
	sleepFunc()

	// this is the solution for time optimization
	// waitgroup (make sure all thread got executed)
	waitgroupFunc()

	fmt.Println("main func completed...")
}

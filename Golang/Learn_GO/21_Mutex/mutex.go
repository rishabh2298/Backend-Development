package main

import (
	"fmt"
	"sync"
)

type Post struct {
	views int
	mu    sync.Mutex
}

func (p *Post) init(wg *sync.WaitGroup) {
	defer func() {
		p.mu.Unlock()
		wg.Done()
	}()

	p.mu.Lock()
	p.views += 1
}

func main() {
	myPost := Post{views: 0}
	var wg sync.WaitGroup

	for i := 1; i <= 100; i++ {
		wg.Add(1)
		go myPost.init(&wg)
	}

	wg.Wait()
	fmt.Println("mypost ::", myPost.views)

	// Goroutines :-
	// Without wait group :: 74, 93, 85, 92
	// with only wait group :: 95, 99, 100, 96, 95
	// with mutex + wait group :: 100, 100, 100, 100
}

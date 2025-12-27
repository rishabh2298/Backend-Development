package main

import (
	"fmt"
	"time"
)

type Order struct {
	id      string
	amount  float32
	status  string
	orderAt time.Time
}

// unofficial constructor
func NewOrder(id string, amount float32, status string) *Order {
	order := Order{
		id:      id,
		amount:  amount,
		status:  status,
		orderAt: time.Now(),
	}

	return &order
}

// method binding to struct (OPP's)
// receiver type => (o Order)
func (o *Order) changeStatus(status string) {
	o.status = status
}

func (o Order) getAmount() float32 {
	return o.amount
}

func main() {

	order1 := Order{
		id:     "1",
		amount: 50.22,
		status: "received",
	}

	fmt.Println("Order 1 ::", order1)

	order2 := Order{
		id:      "2",
		amount:  100.45,
		status:  "initiated",
		orderAt: time.Now(),
	}

	fmt.Println("Order 2 ::", order2)
	fmt.Println("Order 2 amount ::", order2.getAmount())

	order2.changeStatus("paid")
	fmt.Println("Order 2 updated status ::", order2)

	// NewOrder
	order3 := NewOrder("3", 64.55, "delivered")
	fmt.Println("Order 3 ::", order3)

	// One time use
	language := struct {
		language string
		native   bool
	}{"hindi", true}

	fmt.Println("Language ::", language)

	// Order 1 :: {1 50.22 received {0 0 <nil>}}
	// Order 2 :: {2 100.45 initiated {14000596707631295471 60121 0x5440c0}}
	// Order 2 amount :: 100.45
	// Order 2 updated status :: {2 100.45 paid {14000596707631295471 60121 0x5440c0}}
	// Order 3 :: &{3 64.55 delivered {14000596707631324264 88914 0x5440c0}}
	// Language :: {hindi true}

}

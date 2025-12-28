package main

import "fmt"

type OrderStatus int
type PaymentStatus string

const (
	Received OrderStatus = iota
	Confirmed
	Prepared
	Delivered

	Successful PaymentStatus = "SUCCESSFUL"
	Pending    PaymentStatus = "PENDING"
	Failed                   = "FAILED"
)

func changeOrder(status OrderStatus) {
	fmt.Println("Order status changed ::", status)
}

func changePayment(status PaymentStatus) {
	fmt.Println("Payment status changed ::", status)
}

func main() {
	changeOrder(Received)
	changeOrder(Delivered)

	changePayment(Pending)
	changePayment(Failed)

	// Order status changed :: 0
	// Order status changed :: 3
	// Payment status changed :: PENDING
	// Payment status changed :: FAILED

}

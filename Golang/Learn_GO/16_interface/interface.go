package main

import "fmt"

type paymentGateway interface {
	pay(amount float32)
}

type payment struct {
	paymentGateway paymentGateway
}

func (p payment) makePayment(amount float32) {
	// 3rd party integration for payment

	// razorpay or paypal
	p.paymentGateway.pay(amount)
}

type razorpay struct{}

// implements interface
func (r razorpay) pay(amount float32) {
	fmt.Println("RazorPay payment process...", amount)
}

type paypal struct{}

// implements interface
func (p paypal) pay(amount float32) {
	fmt.Println("PayPal payment process...", amount)
}

func main() {
	// 1st service
	razorpay := razorpay{}

	payment1 := payment{
		paymentGateway: razorpay,
	}
	payment1.makePayment(100)

	// 2nd service
	paypal := paypal{}

	payment2 := payment{
		paymentGateway: paypal,
	}
	payment2.makePayment(300)

	// RazorPay payment process... 100
	// PayPal payment process... 300

}

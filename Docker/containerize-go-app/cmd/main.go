package main

import (
	"containerize-go-app/internal/routers"
)

func main() {

	router := routers.SetupRouter()

	err := router.Run(":8080")

	if err != nil {
		panic(err)
	}
}

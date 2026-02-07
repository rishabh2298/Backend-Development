package main

import (
	"containerize-go-app/internal/routers"
	"fmt"
	"os"
)

func main() {

	router := routers.SetupRouter()

	prtNo := os.Getenv("RUN_PORT")
	if prtNo == "" {
		prtNo = "8080"
	}

	fmt.Printf("=============== port No : %s ==================\n", prtNo)

	err := router.Run(fmt.Sprintf(":%s", prtNo))
	if err != nil {
		panic(err)
	}
}

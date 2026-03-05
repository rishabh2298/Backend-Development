package main

import (
	"distroless_images/internal/routers"
	"fmt"
)

func main() {
	fmt.Println("inside main ...")

	routes := routers.NewRouter()

	routes.Run(":8080")
}

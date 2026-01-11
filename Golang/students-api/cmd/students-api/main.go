package main

import (
	"fmt"
	"students-api/internal/config"
)

func main() {
	fmt.Println("starting student api ...")

	// load config
	cfg := config.MustLoadConfig()
	fmt.Println("config loaded ...", cfg)

	// init database
	// setup routes
	// setup server

}

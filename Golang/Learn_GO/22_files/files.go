package main

import (
	"fmt"
	"os"
)

func openFunc() {
	file, err := os.Open("./example.txt")
	if err != nil {
		panic(err)
	}
	defer file.Close()

	fileInfo, err := file.Stat()
	if err != nil {
		panic(err)
	}

	fmt.Println("File Name :", fileInfo.Name())
	fmt.Println("File permission (read/write) :", fileInfo.Mode())
	fmt.Println("File last modified :", fileInfo.ModTime())

	buffer := make([]byte, fileInfo.Size())

	_, err2 := file.Read(buffer)
	if err2 != nil {
		panic(err2)
	}

	for _, val := range buffer {
		fmt.Print(string(val))
	}
	fmt.Println("\n===============")

	// File Name : example.txt
	// File permission (read/write) : -rw-rw-r--
	// File last modified : 2026-01-04 23:41:04.879162579 +0530 IST
	// Hello World
	// Learning Golang
	// ===============

}

func main() {
	openFunc()
}

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
	fmt.Println()

	// File Name : example.txt
	// File permission (read/write) : -rw-rw-r--
	// File last modified : 2026-01-04 23:41:04.879162579 +0530 IST
	// Hello World
	// Learning Golang

}

func readFileFunc() {

	buffer, err := os.ReadFile("./example.txt")
	if err != nil {
		panic(err)
	}

	for _, val := range buffer {
		fmt.Print(string(val))
	}
	fmt.Println()

	// Hello World
	// Learning Golang

}

func readDirFunc() {

	fileDir, err := os.Open("../")
	if err != nil {
		panic(err)
	}
	defer fileDir.Close()

	dirs, err := fileDir.ReadDir(-1)
	if err != nil {
		panic(err)
	}

	for i, dir := range dirs {
		fmt.Println(i, dir)
	}

	// 0 d 20_channels/
	// 1 d 21_Mutex/
	// 2 d 16_interface/
	// 3 d variables/
	// 4 d constants/ ... so on
}

func writeStringFunc() {

	file, err := os.Create("output.txt")

	if err != nil {
		panic(err)
	}
	defer file.Close()

	file.WriteString("Hello World 2 !!!")
}

func writeBytesFunc() {

	file, err := os.Create("output.txt")

	if err != nil {
		panic(err)
	}
	defer file.Close()

	bytes := []byte("Yo how are you")

	_, err2 := file.Write(bytes)
	if err2 != nil {
		panic(err2)
	}
}

func main() {
	// case :: READ
	// good to use
	openFunc()

	// not recomend for larger files (as it load's whole into memory)
	readFileFunc()

	// read folders
	readDirFunc()

	// case :: WRITE
	// direct string
	writeStringFunc()

	// buffer bytes
	writeBytesFunc()

}

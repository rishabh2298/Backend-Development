package main

import (
	"bufio"
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

func writeF1ToF2Func() {

	sourceFile, err := os.Open("./example.txt")

	if err != nil {
		panic(err)
	}
	defer sourceFile.Close()

	destFile, err2 := os.Create("output.txt")

	if err2 != nil {
		panic(err2)
	}
	defer destFile.Close()

	// bufio
	reader := bufio.NewReader(sourceFile)
	writer := bufio.NewWriter(destFile)

	for {
		byteData, err3 := reader.ReadByte()
		if err3 != nil {
			if err3.Error() != "EOF" {
				panic(err3)
			}
			break
		}

		err4 := writer.WriteByte(byteData)
		if err4 != nil {
			panic(err4)
		}
	}

	writer.Flush()

	fmt.Println("File read-write completed F1 ---> F2")
}

func deleteFunc() {

	err := os.Remove("./output.txt")

	if err != nil {
		panic(err)
	}

	fmt.Println("file removed successfully ...")
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

	// bufio (file 1 ---> file 2)
	writeF1ToF2Func()

	// delete files
	deleteFunc()

}

package main

import "fmt"

type Books struct {
	title   string
	author  string
	subject string
	book_id int
}

func StructTest() {
	fmt.Print("Struct Test!\n")

	// 结构体定义
	/*
		type struct_name struct {
			member dataType
			member dataType
			member dataType
			...
			member dataType
		}
	*/

	book1 := Books{"go语言", "kkx", "turtoist", 1761}
	fmt.Print(book1)

	fmt.Print("\n")

	//  访问结构体成员
	fmt.Print(book1.author)

	fmt.Print("\n")
	// 结构体对象作为参数
	printBook(book1)

	fmt.Print("\n")
	// 结构体指针
	// var ipBook *Books
	ipBook := &book1
	fmt.Print(ipBook.book_id)

	fmt.Print("\n")

}

func printBook(book Books) {
	fmt.Print(book.title)
}

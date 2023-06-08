package main

import "fmt"

func pointerTest() {

	fmt.Print("\nPointer Test!\n")

	a := 10

	//  取地址符 &
	fmt.Printf("变量的地址 : %x \n", &a)

	// 指针变量指向一个值的内存地址

	// 声明指针
	//var ip  *int
	//var fp *float32

	// 定义指针
	ip := &a

	// 访问指针
	fmt.Printf("ip变量储存ip的指针地址:%x\n", ip)

	// 访问指针的值 *ip
	fmt.Printf("ip变量的值: %d\n", *ip)

	// 空指针 nil

	// 空指针判断
	if ip != nil {
		fmt.Print("ip不为空\n")
	}

}

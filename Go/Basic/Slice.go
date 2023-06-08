package main

import "fmt"

func SliceTest() {
	fmt.Print("SliceTest\n")

	//  slice 是对数组的抽象，长度不固定，可以追加元素，容量自动增大

	// var identifier []type  定义切片不需要说明长度

	// slice1 := make([] type, len)
	s := []int{1, 2, 3}
	fmt.Print(s)
	fmt.Print("\n")

	// 切片操作

	// len()
	fmt.Print(len(s))
	fmt.Print("\n")

	// cap()
	fmt.Print(cap(s))
	fmt.Print("\n")

	// 空切片
	var numbers []int

	if numbers == nil {
		fmt.Print("切片为空\n")
	}

	// 切片截取
	slice1 := []int{1, 2, 3, 4, 5, 6, 7}
	slice2 := slice1[1:4]

	fmt.Print(slice2)
	fmt.Print("\n")

	// append()
	slice2 = append(slice2, 5, 6)
	fmt.Print(slice2)

	fmt.Print("\n")
	copy(slice1, slice2)
	fmt.Print(slice1)

}

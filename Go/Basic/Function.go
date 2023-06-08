package main

import "fmt"

// 定义函数回调别名
type cb func(int) int

func funcExecute() {
	// testCallback(1, callback)

	nextnumber := getSequence()

	fmt.Println(nextnumber())
	fmt.Println(nextnumber())
	fmt.Println(nextnumber())

	nextnumber1 := getSequence()

	fmt.Println(nextnumber1())
	fmt.Println(nextnumber1())
	fmt.Println(nextnumber1())
}

//  闭包
func getSequence() func() int {
	i := 0
	return func() int {
		i += 1
		return i
	}
}

func max(a, b int) int {

	var result int
	if a > b {
		result = a
	} else {
		result = b
	}

	return result
}

// 函数返回多个值
func swap(x, y string) (string, string) {
	return y, x
}

// 值传递和引用传递

// 函数作为实参
func testCallback(x int, f cb) {
	f(x)
}

func callback(x int) int {
	fmt.Printf("我是回调, x:%d\n", x)
	return x
}

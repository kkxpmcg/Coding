package main

import "fmt"

//引入包

func varibale() {

	fmt.Print("\n")

	var a string = "kkx"

	fmt.Print(a)

	fmt.Print("\n")
	var b, c int = 1, 2
	fmt.Print(b, c)

	fmt.Print("\n")
	var d bool
	fmt.Print(d)

	fmt.Print("\n")

	var i int
	var f float64
	var j bool
	var s string
	fmt.Printf("%v %v %v %q \n", i, f, j, s)

	var a1 = true
	fmt.Print(a1)

	fmt.Print("\n")
	intval := 1
	fmt.Print(intval)

	fmt.Print("\n")
	b1 := "hahha"
	fmt.Print(b1)

	//  := 是最高效的赋值方式，但是只能用在函数体内，不能用于全局函数

}

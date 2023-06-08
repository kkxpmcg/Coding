package main

import "fmt"

func arrayTest() {
	balance := [5]float32{1000.0, 2.0, 3.4, 7, 50}
	for i := 0; i < 5; i++ {
		fmt.Print(balance[i])
	}
}

// 静态数组定义
//
//	var  variable_name [size] variable_type
//
// var balance [10] int
var balancef [20]float32

// balance := [5]float32{1000.0,2.0,3.4,7,50} 显示数量数组

// balance := [...]float32{1000.0,2.0,3.4,7,50} 隐式数量数组

/* 访问数组元素

 */

// 数组作为参数 arr []int

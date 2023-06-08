package main

import (
	"fmt"
	"strconv"
)

func MapTest() {
	fmt.Print("Map Test\n")

	//map_value := make(map[keyType]ValueType, initialCapacity)

	// 创建空的map
	//m := make((map[string] int)

	// 10是初始容量,会自动扩充
	//m := make(map[string]int, 10)

	m := map[string]int{
		"apple":  1,
		"banana": 2,
		"Orange": 3,
	}

	fmt.Print(m)

	//  获取元素
	v1 := m["apple"]

	v2, ok := m["pear"]

	fmt.Printf("\n%d %d %d", v1, v2, ok)

	// 获取map的长度

	len := len(m)

	fmt.Printf("\n%d", len)

	// 遍历
	for k, v := range m {
		fmt.Printf("\nkey= %s,value = %d", k, v)
	}

	// 删除键值对
	delete(m, "banana")

	s1 := "12"

	// sting to integer
	bInt, err := strconv.Atoi(s1)

	fmt.Printf("\n%d,%s", bInt, err)
}

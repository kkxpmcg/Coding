package main

import "fmt"

func RangeTest() {
	fmt.Print("\nRangeTest\n")

	// range可以对slice，map，数组，字符串等进行迭代循环
	/*
		for key,value := range oldMap {
			newMap[key] = value
		}

		省略value
		for key := range oldMap

		省略key
		for _, value := range oldMap
	*/

	//  遍历简单的数组
	pow := []int{1, 2, 4, 8, 16, 32, 64, 128}
	for i, v := range pow {
		fmt.Printf("2**%d = %d\n", i, v)
	}

	// 省略key，value
	map1 := make(map[int]float32)
	map1[1] = 1.0
	map1[2] = 2.0
	map1[3] = 3.0
	map1[4] = 4.0

	for key, value := range map1 {
		fmt.Printf("key is: %d - value is: %f\n", key, value)
	}

	for key := range map1 {
		fmt.Printf("key is : %d\n", key)
	}

	for _, value := range map1 {
		fmt.Printf("value is : %f\n", value)
	}
}

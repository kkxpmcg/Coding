package main

import "fmt"

func loop() {
	fmt.Print("loop")

	for true {
		fmt.Printf("a")
	}
}

// break 语句 ： 跳出for或者switch循环
// continue : 跳过当前循环的剩余语句，进行下一次循环
// goto语句 ： 控制转移到被标记的语句

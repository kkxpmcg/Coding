// 包声明
package main

//引入包
import "fmt"

//函数
func main() {
	fmt.Println("hello,world!")

	test()

	varibale()

	fmt.Printf("\nmax = %v", max(10, 20))

	fmt.Print("\n")

	a, b := swap("1", "2")

	fmt.Println(a, b)

	funcExecute()

	arrayTest()

	pointerTest()

	StructTest()

	SliceTest()

	leetcode_35()

	RangeTest()

	MapTest()
}

// 变量第一个字母大写可以被外部访问
// 变量第一个字母小写对包外是不可见的

// 文件名和包名可以不一致

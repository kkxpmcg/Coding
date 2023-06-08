package main

import "fmt"

func leetcode_35() {

	a := []int{1, 3, 5, 6}

	fmt.Print("\n")

	fmt.Print(searchInsert(a, 7))

}

func searchInsert(nums []int, target int) int {
	n := len(nums)

	if n <= 0 {
		return 0
	}

	left, right := 0, n

	for left < right {
		mid := (left + right) / 2
		if nums[mid] < target {
			left = mid + 1
		} else if nums[mid] > target {
			right = mid
		} else {
			return mid
		}
	}

	return left
}

package main

import (
	"strings"
	"fmt"
	"os"
	"bufio"
	"strconv"
)

func main(){
	arr := [6][] string {}
	arrInt := [6][6] int {}
	scanner := bufio.NewScanner(os.Stdin)

	for i:=0; i < 6; i++ {
		scanner.Scan()
		row := scanner.Text()
		arr[i] = strings.Fields(row)
	}

	for i:=0; i < 6; i++ {
		for j:=0; j < 6; j++ {
			tmp, err := strconv.Atoi(arr[i][j])
			if err != nil {
				return
			}
			arrInt[i][j] = tmp
		}
	} 
	size := len(arr)
	subSize := len(arr[0])
	ret := checker(arrInt, size, subSize)
	fmt.Println(ret)

}


func checker(tmp [6][6]int, size int, subSize int) int {
	results := [] int {}
	result := 0
	for i:=0 ; i < size -2 ; i++ {
		for j:=0 ; j < subSize-2 ; j++{
			result = 0
			result = tmp[i][j]+tmp[i][j+1]+tmp[i][j+2]
			result += tmp[i+1][j+1]
			result += tmp[i+2][j]+tmp[i+2][j+1]+tmp[i+2][j+2]
			results = append(results, result)
		}
	}

	maxNum := maximum(results)
	return maxNum
}

func maximum(tmp []int) int {
	maxNum := tmp[0]
	for _,i:=range tmp {
		if i > maxNum {
			maxNum = i
		}
	}
	return maxNum
}
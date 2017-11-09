package main
import (
	"fmt"
	"bufio"
	"strings"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	input := scanner.Text()
	arr := strings.Fields(input)
	
	rotate, err := strconv.Atoi(arr[1])
	if err != nil{
		return
	}

	scanner.Scan()

	input2 := scanner.Text()
	arr2 := strings.Fields(input2)

	for i := 0; i< rotate ; i++ {
		one := arr2[0]
		rest := arr2[1 : len(arr2)]
		arr2 = append(rest, one)
	}
	fmt.Println(strings.Join(arr2, " "))
}
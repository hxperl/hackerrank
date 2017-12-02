package main
import (
	"fmt"
	"bufio"
	"strings"
	"os"
	"strconv"
)

func main() {
	var tmp []string
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

	for rotate != 0 {
		if rotate > len(arr2) {
			rotate -= len(arr2)
		} else {
			tmp = arr2[:rotate]
			arr2 = arr2[len(tmp):len(arr2)]
			arr2 =  append(arr2, tmp...)
			rotate = 0
		}
	}

	fmt.Println(strings.Join(arr2, " "))
}
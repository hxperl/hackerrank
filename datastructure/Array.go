package main
import (
	"fmt"
	"bufio"
	"os"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)	// 스캐너 변수 선언
	scanner.Scan()
	//size := scanner.Text()	// 배열 사이즈
	scanner.Scan()
	array_string := scanner.Text()
	result := strings.Split(array_string, " ")

	reversed := reverseStrings(result)

	fmt.Println(strings.Join(reversed, " "))
}

func reverseStrings(input []string) []string{
	if len(input) == 0 {
		return input
	}
	return append(reverseStrings(input[1:]), input[0])
}

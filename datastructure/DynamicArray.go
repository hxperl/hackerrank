package main
import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	input := scanner.Text()
	arr := strings.Fields(input)
	N, err := strconv.Atoi(arr[0])
	if err != nil {
		return
	}
	s := make([][]int, N, N)
	Q, err := strconv.Atoi(arr[1])
	if err != nil {
		return
	}
	lastAnswer := 0
	for i:=0; i<Q; i++ {
		scanner.Scan()
		query := strings.Fields(scanner.Text())
		n1, _ := strconv.Atoi(query[0])
		n2, _ := strconv.Atoi(query[1])
		n3, _ := strconv.Atoi(query[2])
		if n1 == 1 {
			tmp := (n2 ^ lastAnswer) % N
			s[tmp] = append(s[tmp], n3)
		}
		if n1 == 2 {
			tmp := (n2 ^ lastAnswer) % N
			val := n3 % len(s[tmp])
			lastAnswer = s[tmp][val]
			fmt.Println(lastAnswer)
		}
	}
}
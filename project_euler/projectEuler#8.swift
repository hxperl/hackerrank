import Combine

let testCase = Int(readLine()!)!

func largestProduct(digits: [Int], numDigits: Int) -> Int {
	var maxNumber = 0
    let maxLength = digits.count - numDigits
    for i in 0 ..< maxLength {
        var number  = 1
		for j in i..<i+numDigits {
			number *= digits[j]
		}
		
		if number > maxNumber {
			maxNumber = number
		}
    }
    return maxNumber
}

for _ in 0..<testCase {
    let input = readLine()!.split(separator: " ")
    let N = input[0]
    let K = Int(String(input[1]))!
    let input2 = readLine()!
    let digits = input2.compactMap { $0.wholeNumberValue }
    print(largestProduct(digits: digits, numDigits: K))
}
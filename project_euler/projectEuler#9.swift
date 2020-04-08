import Foundation

func pythagoreanTriplet(sum: Int) -> Int {
    guard sum >= 12 else { return  -1 }
    var results: [Int] = []
    for m in Int(ceil(Double(sum / 2).squareRoot()))...Int(floor(Double(sum).squareRoot() + 1.0)) {
        let a = sum - sum * sum / (2 * (m * m))
        let b = sum - m * m
        let c = sum - a - b
        print(a, b, c)
        if a != b && b != c && a != c {
            print("appended", a * b * c)
            results.append(a * b * c)
        }
	}
    return results.max() ?? -1
}

let testCase = Int(readLine()!)!

for _ in 0..<testCase {
    let input = Int(readLine()!)!
    print(pythagoreanTriplet(sum: input))
}
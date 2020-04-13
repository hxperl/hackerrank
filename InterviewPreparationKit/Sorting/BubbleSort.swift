import Foundation

// Complete the countSwaps function below.
func countSwaps(a: [Int]) -> Void {
    var fisrElement: Int
    var lastElement: Int
    var swapCount = 0
    var copy = a

    for _ in 0..<copy.count {
        for j in 0..<(copy.count - 1) {
            if copy[j] > copy[j + 1] {
                let temp = copy[j]
                copy[j] = copy[j + 1]
                copy[j + 1] = temp
                swapCount += 1
            }
        }
    }
    fisrElement = copy[0]
    lastElement = copy[copy.count - 1]

    print("Array is sorted in \(swapCount) swaps.")
    print("First Element: \(fisrElement)")
    print("Last Element: \(lastElement)")
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let aTemp = readLine() else { fatalError("Bad input") }
let a: [Int] = aTemp.split(separator: " ").map {
    if let aItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return aItem
    } else { fatalError("Bad input") }
}

guard a.count == n else { fatalError("Bad input") }

countSwaps(a: a)
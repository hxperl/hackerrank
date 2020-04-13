import Foundation

// Complete the maximumToys function below.
func maximumToys(prices: [Int], k: Int) -> Int {
    var sorted = prices.sorted()
    var count = 0
    var total = 0
    while total < k {
        total += sorted.removeFirst()
        count += 1
    }
    return count - 1
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let nkTemp = readLine() else { fatalError("Bad input") }
let nk = nkTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let pricesTemp = readLine() else { fatalError("Bad input") }
let prices: [Int] = pricesTemp.split(separator: " ").map {
    if let pricesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return pricesItem
    } else { fatalError("Bad input") }
}

guard prices.count == n else { fatalError("Bad input") }

let result = maximumToys(prices: prices, k: k)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

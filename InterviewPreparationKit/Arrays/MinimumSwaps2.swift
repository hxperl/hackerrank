import Foundation

// Complete the minimumSwaps function below.
func minimumSwaps(arr: [Int]) -> Int {
    var swapCount = 0
    var copy = arr
    /// arr[i] must be i + 1
    for i in 0..<arr.count {
        while copy[i] != i + 1 {
            var temp = copy[i]
            copy[i] = arr[temp-1]
            copy[temp - 1] = temp
            swapCount += 1
        }
    }
    return swapCount
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

let res = minimumSwaps(arr: arr)

fileHandle.write(String(res).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
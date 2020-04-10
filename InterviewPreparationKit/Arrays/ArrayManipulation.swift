import Foundation

// Complete the arrayManipulation function below.
func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var arr = [Int](repeating: 0, count: n + 1)
    for query in queries {
        let startIndex = query[0] - 1
        let endIndex = query[1]
        arr[startIndex] += query[2]
        arr[endIndex] -= query[2]
    }
    var max = 0
    var total = 0
    for i in 0..<arr.count {
        total += arr[i]
        if total > max {
            max = total
        }
    }
    return max
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let nmTemp = readLine() else { fatalError("Bad input") }
let nm = nmTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nm[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let m = Int(nm[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

let queries: [[Int]] = AnyIterator{ readLine() }.prefix(m).map {
    let queriesRow: [Int] = $0.split(separator: " ").map {
        if let queriesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return queriesItem
        } else { fatalError("Bad input") }
    }

    guard queriesRow.count == 3 else { fatalError("Bad input") }

    return queriesRow
}

guard queries.count == m else { fatalError("Bad input") }

let result = arrayManipulation(n: n, queries: queries)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
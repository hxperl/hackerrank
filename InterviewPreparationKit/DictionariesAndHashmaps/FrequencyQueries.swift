import Foundation

// Complete the freqQuery function below.
func freqQuery(queries: [[Int]]) -> [Int] {
    var dict = Dictionary<Int, Int>()
    var countDict = Dictionary<Int, Int>()
    var result = [Int]()
    for q in queries {
        if q[0] == 1 {
            if dict.keys.contains(q[1]) {
                countDict[dict[q[1]]!, default: 0] -= 1
                dict[q[1]]! += 1
                countDict[dict[q[1]]!, default: 0] += 1
            } else {
                dict[q[1]] = 1
                countDict[1, default: 0] += 1
            }
        } else if q[0] == 2 {
            if dict.keys.contains(q[1]) {
                countDict[dict[q[1]]!, default: 0] -= 1
                dict[q[1]]! = max(dict[q[1]]! - 1, 0)
                countDict[dict[q[1]]!, default: 0] += 1
            } 
        } else if q[0] == 3 {
            if countDict.keys.contains(q[1]) && countDict[q[1]]! > 0 {
                result.append(1)
            } else {
                result.append(0)
            }
        }
    }
    return result
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let queries: [[Int]] = AnyIterator{ readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) }.prefix(q).map {
    let queriesRow: [Int] = $0.split(separator: " ").map {
        if let queriesItem = Int($0) {
            return queriesItem
        } else { fatalError("Bad input") }
    }

    guard queriesRow.count == 2 else { fatalError("Bad input") }

    return queriesRow
}

guard queries.count == q else { fatalError("Bad input") }

let ans = freqQuery(queries: queries)

fileHandle.write(ans.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
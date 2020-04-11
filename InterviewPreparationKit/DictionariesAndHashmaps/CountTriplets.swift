import Foundation

// Complete the countTriplets function below.
func countTriplets(arr: [Int], r: Int) -> Int {
    var dict = Dictionary<Int, Int>()
    var lDict = Dictionary<Int, Int>()
    for key in arr {
        dict[key] = (dict[key] ?? 0) + 1
    }
    var count = 0
    for key in arr {
        dict[key]! -= 1

        if key % r == 0 {
            if lDict.keys.contains(key / r) && dict.keys.contains(key * r) {
                count += lDict[key / r]! * dict[key * r]!
            }
        }

        lDict[key] = (lDict[key] ?? 0) + 1
    }
    
    return count
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let nrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
let nr = nrTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nr[0])
else { fatalError("Bad input") }

guard let r = Int(nr[1])
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

let ans = countTriplets(arr: arr, r: r)

fileHandle.write(String(ans).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

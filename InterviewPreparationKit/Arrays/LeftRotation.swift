import Foundation

// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    let prefix = a.prefix(d)
    var b = a.dropFirst(d)
    b.append(contentsOf: prefix)
    return Array(b)
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let ndTemp = readLine() else { fatalError("Bad input") }
let nd = ndTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nd[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let d = Int(nd[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let aTemp = readLine() else { fatalError("Bad input") }
let a: [Int] = aTemp.split(separator: " ").map {
    if let aItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return aItem
    } else { fatalError("Bad input") }
}

guard a.count == n else { fatalError("Bad input") }

let result = rotLeft(a: a, d: d)

fileHandle.write(result.map{ String($0) }.joined(separator: " ").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

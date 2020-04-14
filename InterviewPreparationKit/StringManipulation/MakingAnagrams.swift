import Foundation

// Complete the makeAnagram function below.
func makeAnagram(a: String, b: String) -> Int {
    var arrA = Array(a)
    var arrB = Array(b)
    for c in a {
        if arrB.contains(c), let aIndex = arrA.firstIndex(of: c), let bIndex = arrB.firstIndex(of: c) {
            arrA.remove(at: aIndex)
            arrB.remove(at: bIndex)
        }
    }
    return arrA.count + arrB.count
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let a = readLine() else { fatalError("Bad input") }

guard let b = readLine() else { fatalError("Bad input") }

let res = makeAnagram(a: a, b: b)

fileHandle.write(String(res).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
import Foundation

extension String {
    subscript (index: Int) -> Character {
        let charIndex = self.index(self.startIndex, offsetBy: index)
        return self[charIndex]
    }

    subscript (range: Range<Int>) -> Substring {
        let startIndex = self.index(self.startIndex, offsetBy: range.startIndex)
        let stopIndex = self.index(self.startIndex, offsetBy: range.startIndex + range.count)
        return self[startIndex..<stopIndex]
    }
}

// Complete the sherlockAndAnagrams function below.
func sherlockAndAnagrams(s: String) -> Int {
    var dict = Dictionary<String, Int>()
    for length in 1..<s.count {
        for start in 0..<s.count - length + 1 {
            let ordStr = String(s[start..<start+length].sorted())
            print(ordStr)
            dict[ordStr] = (dict[ordStr] ?? 0) + 1
        }
    }
    var count = 0
    print(dict)
    for v in dict.values {
        count += v*(v-1) / 2
    }
    return count
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for qItr in 1...q {
    guard let s = readLine() else { fatalError("Bad input") }

    let result = sherlockAndAnagrams(s: s)

    fileHandle.write(String(result).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
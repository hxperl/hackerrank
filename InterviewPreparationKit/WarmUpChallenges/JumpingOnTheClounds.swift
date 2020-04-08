import Foundation

// Complete the jumpingOnClouds function below.
func jumpingOnClouds(c: [Int]) -> Int {
	var copy = c
	var jumpCount = 0
	while true {
		if copy.count == 1 {
			break
		} else if copy.count == 2 {
			jumpCount += 1
			break
		} else {
			if copy[2] == 1 {
				copy = Array(copy.dropFirst())
				jumpCount += 1
				continue
			}
			copy = Array(copy.dropFirst(2))
			jumpCount += 1
			continue
		}
	}
	return jumpCount
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let cTemp = readLine() else { fatalError("Bad input") }
let c: [Int] = cTemp.split(separator: " ").map {
    if let cItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return cItem
    } else { fatalError("Bad input") }
}

guard c.count == n else { fatalError("Bad input") }

let result = jumpingOnClouds(c: c)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
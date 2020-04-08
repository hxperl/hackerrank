import Foundation

// Complete the countingValleys function below.
func countingValleys(n: Int, s: String) -> Int {
	
	var currentHeight = 0
	var valleyCount = 0
	for step in s {
		if step == "U" {
			currentHeight += 1
		} else {
			currentHeight -= 1
			if currentHeight == -1 {
				valleyCount += 1
			}
		}
	}
	return valleyCount
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let s = readLine() else { fatalError("Bad input") }

let result = countingValleys(n: n, s: s)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

import Foundation

// Complete the repeatedString function below.
func repeatedString(s: String, n: Int) -> Int {
	let size = s.count
	let res = n / size
	let mod = n % size
	let noExistA = s.filter { $0 != "a" }
	let aCountInString = size - noExistA.count

	var result = aCountInString * res

	if mod != 0 {
		let slice = Array(s.prefix(mod))
		let noExistA = slice.filter { $0 != "a" }
		let aCountInString = slice.count - noExistA.count
		result += aCountInString
	}
	
	return result
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let result = repeatedString(s: s, n: n)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
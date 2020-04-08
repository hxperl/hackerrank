import Foundation

// Complete the minimumBribes function below.
func minimumBribes(q: [Int]) -> Void {
    var swap = 0
    var pos = 0
    for i in stride(from: q.count - 1, to: 0, by: -1) {
        var j = 0
        let bribes = q[pos] - (pos+1)
        if bribes > 2 {
            print("Too chaotic")
            return
        }
        if q[i] - 2 > 0 {
            j = q[i] - 2
        }

        while j <= i {
            if q[j] > q[i] {
                swap += 1
            }
            j += 1
        }
        pos += 1
    }
    print(swap)
}

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    guard let qTemp = readLine() else { fatalError("Bad input") }
    let q: [Int] = qTemp.split(separator: " ").map {
        if let qItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return qItem
        } else { fatalError("Bad input") }
    }

    guard q.count == n else { fatalError("Bad input") }

    minimumBribes(q: q)
}
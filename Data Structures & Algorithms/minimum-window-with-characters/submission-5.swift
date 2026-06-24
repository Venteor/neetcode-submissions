class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
            // array for first string
            // then start from left try to find string moving right border
            // then try to move left to reduce size of the border
            //
            guard t.count <= s.count else {
                return ""
            }
            let s = Array(s.utf8)
            let t = Array(t.utf8)

            var strArray = Array(repeating: 0, count: 58)
            var winArray = Array(repeating: 0, count: 58)

            var left = 0
            var right = t.count - 1

            var minStr = [UInt8]()

            for i in 0..<t.count {
                strArray[Int(t[i]) - 65] += 1
                winArray[Int(s[i]) - 65] += 1
            }

            if strArray == winArray {
                return String(bytes: s[left...right], encoding: .utf8)!
            }
            var isValid = false
            while true {
                if right == s.count - 1 && !isValid {
                    break
                } else if isValid {
                    winArray[Int(s[left]) - 65] -= 1
                    left += 1
                    if minEqual(orig: strArray, window: winArray) {
                        if minStr.count > right - left + 1 {
                            minStr = Array(s[left...right])
                        }
                        continue
                    } else {
                        isValid = false
                        continue
                    }
                } else if right >= s.count - 1 {
                    break
                }
                right += 1
                winArray[Int(s[right]) - 65] += 1

                if minEqual(orig: strArray, window: winArray) {
                    if minStr.isEmpty || minStr.count > right - left + 1 {
                        minStr = Array(s[left...right])
                    }
                    isValid = true
                }
            }
        return String(bytes: minStr, encoding: .utf8)!
    }

    private func minEqual(orig: [Int], window: [Int]) -> Bool {
        for i in 0..<orig.count {
            guard orig[i] != 0 else { continue }
            if window[i] < orig[i] {
                return false
            }
        }
        return true
    }
}

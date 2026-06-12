class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var lastSeen: [Character: Int] = [:]
        let s = Array(s)
        var maxCount = 0
        var left = 0

        for right in 0..<s.count {
            let ch = s[right]

            if let prevIndex = lastSeen[ch], prevIndex >= left {
                left = prevIndex + 1
            }

            let window = right - left + 1

            if window > maxCount {
                maxCount = window
            }

            lastSeen[ch] = right
        }

        return maxCount
    }
}
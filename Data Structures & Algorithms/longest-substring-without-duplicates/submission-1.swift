class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var hashMap = [Character: Int]()
        let s = Array(s)
        var count = 0
        var maxCount = 0
        var left = 0
        var right = 0

        while right < s.count {
            if hashMap[s[right]] == nil {
                hashMap[s[right]] = 0
                right += 1
            } else {
                hashMap[s[left]] = nil
                left += 1
            }
            count = right - left
            if count > maxCount {
                maxCount = count
            }
        }

        return maxCount
    }
}
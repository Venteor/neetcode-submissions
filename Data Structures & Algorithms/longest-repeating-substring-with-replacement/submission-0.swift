class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var maxFreq = 0
        var left = 0
        var res = 0
        var hashMap = [Character: Int]()
        let s = Array(s)

        for right in 0..<s.count {
            let char = s[right]
            var val = hashMap[char, default: 0]
            val += 1
            hashMap[char] = val

            maxFreq = max(maxFreq, val)
            while (right - left + 1) - maxFreq > k {
               hashMap[s[left], default: 0] -= 1
               left += 1
            }
            res = max(res, (right - left + 1))
        }
        return res
    }
}

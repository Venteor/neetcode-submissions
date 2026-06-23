class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let s1 = Array(s1).sorted()
        let s2 = Array(s2)
        var left = 0
        var right = s1.count
        
        while right <= s2.count {
            let array = Array(s2[left..<right]).sorted()
            if array == s1 {
                return true
            }
            right += 1
            left += 1
        }
        return false
    }
}

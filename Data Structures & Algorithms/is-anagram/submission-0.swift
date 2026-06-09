class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        let s = Array(s)
        let t = Array(t)
        var hashMap = [Character: Int]()
        for elem in s {
            if hashMap[elem] == nil {
                hashMap[elem] = 1
            } else {
                hashMap[elem]? += 1
            }
        }
        for elem in t {
            guard var value = hashMap[elem] else {
                return false
            }
            if value > 1 {
                hashMap[elem] = value - 1
            } else {
                hashMap[elem] = nil
            }
        }
        return hashMap.keys.count == 0
    }
}
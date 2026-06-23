class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let s1 = Array(s1)
        let s2 = Array(s2)
        var left = 0
        var right = s1.count
        var hashMap = [Character: Int]()

        for el in s1 {
            hashMap[el, default: 0] += 1
        }

        while right <= s2.count {
            var temMap = hashMap
            let array = Array(s2[left..<right])
            right += 1
            left += 1
            for el in array {
                guard let val = temMap[el], val > 0 else { 
                    continue 
                    }
                temMap[el]? -= 1
            }

            var isEmpty = true
            for val in temMap.values {
                if val != 0 { 
                    isEmpty = false
                    break
                }
            }
            if isEmpty {
                return true
            }
        }
        return false
    }
}

class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashMap = [Int: Int]()
        for i in nums {
            guard hashMap[i] == nil else {
                return true
            }
            hashMap[i] = 1
        }
        return false
    }
}

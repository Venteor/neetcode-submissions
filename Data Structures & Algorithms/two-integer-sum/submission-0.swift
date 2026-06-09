class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int: Int]()

        for i in 0..<nums.count {
            let diff = target - nums[i]
            if let j = hashMap[diff] {
                return [j, i]
            }
            hashMap[nums[i]] = i
        }
        return []
    }
}

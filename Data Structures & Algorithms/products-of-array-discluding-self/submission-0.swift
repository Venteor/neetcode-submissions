class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)
        var multipier = 1

        for i in 0..<nums.count {
            result[i] = multipier
            multipier *= nums[i]
        }

        var index = nums.count - 1
        multipier = 1

        while index >= 0  {
            result[index] *= multipier
            multipier *= nums[index]
            index -= 1
        }

        return result
    }
}

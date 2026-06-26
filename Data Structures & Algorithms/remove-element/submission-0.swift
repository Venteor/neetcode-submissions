class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var k = 0
        for num in nums {
            if num != val {
                nums[k] = num
                k += 1
            }
        }
        return k
    }
}

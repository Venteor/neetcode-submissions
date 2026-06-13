class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        var currentIndex = (r - l) / 2

        while r >= l {
            currentIndex = (l + r) / 2

            if nums[currentIndex] == target {
                return currentIndex
            } else if nums[currentIndex] > target {
                r = currentIndex - 1
            } else {
                l = currentIndex + 1
            }
        }
        return -1
    }
}

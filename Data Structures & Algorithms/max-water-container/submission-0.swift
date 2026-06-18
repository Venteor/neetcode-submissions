class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var left = 0
        var right = heights.count - 1
        var maxArea = 0

        while left < right {
            let maxHeight = min(heights[right], heights[left])
            let square = maxHeight * (right - left)
            maxArea = max(square, maxArea)

            if heights[right] >= heights[left] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxArea
    }
}

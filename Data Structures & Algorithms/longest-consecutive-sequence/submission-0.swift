class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numsSet = Set(nums)
        var longest = 0

        for num in nums {
            guard !numsSet.contains(num - 1) else { continue }
            var lenght = 0
            while numsSet.contains(num + lenght) {
                lenght += 1
            }
            longest = max(longest, lenght)
        }

        return longest
    }
}

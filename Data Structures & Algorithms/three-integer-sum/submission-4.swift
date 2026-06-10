class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        let sortedNums = nums.sorted()
        let n = sortedNums.count
        
        for i in 0..<n {
            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }

            var l = i + 1
            var r = n - 1

            while r > l {
                let sum = sortedNums[i] + sortedNums[l] + sortedNums[r]
                if sum == 0 {
                    result.append([sortedNums[i], sortedNums[l], sortedNums[r]])
                    while r > l, sortedNums[r] == sortedNums[r - 1] {
                        r -= 1
                    }

                    while r > l, sortedNums[l] == sortedNums[l + 1] {
                        l += 1
                    }
                    
                    r -= 1
                    l += 1
                } else if sum > 0 {
                    r -= 1
                } else {
                    l += 1
                }
            }
        }
        return result
    }
}
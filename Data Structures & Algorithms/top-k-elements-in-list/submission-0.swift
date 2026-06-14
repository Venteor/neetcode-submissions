class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count = [Int: Int]()
        var freq = Array(repeating: [Int](), count: nums.count + 1)

        for num in nums {
            count[num, default: 0] += 1
        }
        for (key, value) in count {
            freq[value].append(key)
        }
        var result = [Int]()
        var index = nums.count
        while result.count != k {
            let arr = freq[index]
            if !arr.isEmpty {
                let maxIndex = min(k-result.count, arr.count)
                result.append(contentsOf: arr[0..<maxIndex])
            }
            index -= 1
        }
        return result
    }
}

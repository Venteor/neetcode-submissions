class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [Int]()
        var result = Array(repeating: 0, count: temperatures.count)

        for i in 0..<temperatures.count {

            while let last = stack.last, temperatures[i] > temperatures[last] {
                let val = stack.popLast()!
                result[last] = i - val
            }

            stack.append(i)
        }
        return result
    }
}

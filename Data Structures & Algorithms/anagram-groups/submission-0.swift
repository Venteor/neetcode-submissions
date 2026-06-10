class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result = [[Int]: [String]]()

        for str in strs {
            var count = Array(repeating: 0, count: 26)

            for chr in str {
                let index = Int(chr.asciiValue! -  Character("a").asciiValue!)
                count[index] += 1
            }
            result[count, default: []].append(str)
        }

        return Array(result.values)
    }
}

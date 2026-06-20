class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var res = Array(strs.first!)

        for i in 1..<strs.count {
            var str = Array(strs[i])
            if str.isEmpty {
                return ""
            }
            if str.count < res.count {
                res = Array(res[0..<str.count])
            }
            for j in 0..<str.count {
                
                if j >= res.count {
                    break
                }

                let ch1 = res[j]
                let ch2 = str[j]
                if ch1 == ch2 {
                    continue
                } else if j < res.count {
                    res = Array(res[0..<j])
                    break
                }
            }
        }
        return String(res)
    }
}

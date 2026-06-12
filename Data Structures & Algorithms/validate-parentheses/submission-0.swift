class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let s = Array(s)

        for i in 0..<s.count {
            let ch = s[i]
            guard ch != "(" && ch != "{" && ch != "[" else {
                stack.append(ch)
                continue
            }
            
            let last = stack.popLast()
            switch ch {
                case ")":
                if last != "(" {
                    return false
                }
                case  "}":
                if last != "{" {
                    return false
                }
                case  "]":
                if last != "[" {
                    return false
                }
                default:
                return false
            }
        }
        return stack.isEmpty
    }
}

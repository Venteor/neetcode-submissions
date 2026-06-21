class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        let tokens = Array(tokens)
        var stack = [Int]()
        
        for i in 0..<tokens.count {
            let token = String(tokens[i])
            switch token {
                case "+":
                let right = stack.popLast() ?? 0
                let left = stack.popLast() ?? 0
                let res = left + right
                stack.append(res)
                case "-":
                let right = stack.popLast() ?? 0
                let left = stack.popLast() ?? 0
                let res = left - right
                stack.append(res)
                case "/":
                let right = stack.popLast() ?? 0
                let left = stack.popLast() ?? 0
                let res = left / right
                stack.append(res)
                case "*":
                let right = stack.popLast() ?? 0
                let left = stack.popLast() ?? 0
                let res = left * right
                stack.append(res)
                default:
                stack.append(Int(token) ?? 0)
            } 
            // print("token", token, "left", left, "right", right)
        }
        return stack.popLast() ?? 0
    }
}

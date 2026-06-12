class Solution {
        func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let map: [Character: Character] = [
            ")": "(",
            "}": "{",
            "]": "["
        ]

        for ch in s {
            if let open = map[ch] {
                guard let last = stack.popLast(), last == open else {
                    return false
                }
            } else {
                stack.append(ch)
            }
        }

        return stack.isEmpty
    }
}

class Solution {

    func encode(_ strs: [String]) -> String {
        strs.map { "\($0.count)#\($0)" }.joined()
    }

    func decode(_ str: String) -> [String] {
        var result = [String]()
        let str = Array(str)
        var index = 0
        var lastLetter = 0
        
        while index < str.count {
            guard str[index] == "#" else {
                index += 1
                continue
            }
            let strLenght = Int(String(str[lastLetter..<index])) ?? 0
            index += 1
            lastLetter = index + strLenght

            let newStr = str[index..<(index + strLenght)]
            result.append(String(newStr))
            index += strLenght
        }
        return result
    }
}

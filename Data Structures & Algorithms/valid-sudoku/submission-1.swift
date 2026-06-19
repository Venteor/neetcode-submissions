class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var columns = [Int: Set<Int>]()
        var squares = [[Int]: Set<Int>]()

        for i in 0..<board.count {
            let row = board[i]
            var rowSet = Set<Int>()
            for j in 0..<row.count {
                guard let num = Int(String(row[j])) else { continue }
                if rowSet.contains(num) { return false }
                if let column = columns[j], column.contains(num) { return false }
                if let square = squares[[i/3, j/3]], square.contains(num) { return false }

                rowSet.insert(num)
                columns[j, default: Set<Int>()].insert(num)
                squares[[i/3, j/3], default: Set<Int>()].insert(num)
            }
        }

        return true
    }
}

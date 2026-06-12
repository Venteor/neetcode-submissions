class MinStack {
    private var array: [(Int, Int)] = []
    init() {

    }

    func push(_ val: Int) {
        let currentMin = array.last?.1 ?? val
        let newMin = min(val, currentMin)
        array.append((val, newMin))
    }

    func pop() {
        array.popLast()
    }

    func top() -> Int {
        array.last!.0
    }

    func getMin() -> Int {
        array.last!.1
    }
}

class Solution {
        func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else { return 0 }

        var minPrice = prices[0]
        var bestProfit = 0

        for i in 1..<prices.count {
            let price = prices[i]

            let profit = price - minPrice

            if profit > bestProfit {
                bestProfit = profit
            }

            if price < minPrice {
                minPrice = price
            }
        }

        return bestProfit
    }
}

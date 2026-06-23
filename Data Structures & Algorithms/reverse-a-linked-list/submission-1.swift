/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var first = head
        guard var second = head?.next else {
            return head
        }
        
        head?.next = nil

        while let next = second.next {
            second.next = first
            first = second
            second = next
        }
        second.next = first
        return second
    }
}

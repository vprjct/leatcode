# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    s1 = l1
    s2 = l2
    org = ListNode.new(0)
    res = org
    while (s1 != nil || s2 != nil) do
        if s1 == nil
            res.next = ListNode.new(s2.val)
            s2 = s2.next
            res = res.next
            next
        end
        if s2 == nil
            res.next = ListNode.new(s1.val)
            s1 = s1.next
            res = res.next
            next
        end
        
        if s1.val >= s2.val
            res.next = ListNode.new(s2.val)
            s2 = s2.next
        else
            res.next = ListNode.new(s1.val)
            s1 = s1.next
        end
        res = res.next
    end
    org.next
end

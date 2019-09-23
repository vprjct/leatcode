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
def add_two_numbers(l1, l2)
    sum = rev_order(l1).join.reverse!.to_i + rev_order(l2).join.reverse!.to_i
    return sum.abs.to_s.reverse!.each_byte.map do |b|
        b - 0x30
    end
end

def rev_order(list)
    return [list.val] unless list.next
    return [list.val, rev_order(list.next)]
end

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    sum = nums.sum
    l_sum = 0
    
    nums.each_with_index do |n, i|
        r_sum = sum - l_sum - n
        return i if l_sum == r_sum
        l_sum += n
    end
    return -1
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = Hash.new
    nums.each_with_index do |item, i|
        hash[item] = i
    end
    nums.each_with_index do |item, i|
        if (hash[target - item] && hash[target - item] != i) then
            return [i, hash[target - item]]
        end
    end
end

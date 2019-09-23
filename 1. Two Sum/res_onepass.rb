# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = Hash.new
    nums.each_with_index do |item, i|
        if (hash[target - item]) then
            return [hash[target - item], i]
        end
        hash[item] = i
    end
end

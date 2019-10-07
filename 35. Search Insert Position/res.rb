# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    nums.size.times do |i|
        if nums[i] >= target
            return i
        end
    end
end

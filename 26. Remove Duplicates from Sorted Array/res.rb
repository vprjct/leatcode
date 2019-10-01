# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return unless nums.size > 1
    nums.uniq!
    nums.size
end

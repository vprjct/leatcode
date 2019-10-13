# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
    hash = Hash.new
    size = nums.size
    for i in 0..(size-1) do
        for j in (i+1)..(size-2) do
            sum = nums[i] + nums[j]
#            print "#{i} #{j} \n"
#            print "#{nums[i]} + #{nums[j]} = #{sum} \n"
            list = nums[j+1, size]
#            print list, "\n"
            if hash[sum] == nil
                hash[sum] = Array.new
            end
            hash[sum].push(*list)
        end
    end
    
    hash.keys.each do |k|
        hash[k].uniq!
    end

    tsum = nil
    hash.keys.each do |k|
        hash[k].each do |i|
            sum = k + i
            if tsum == nil || (tsum - target).abs > (sum - target).abs
                tsum = sum
            end
        end
    end
    return tsum
end

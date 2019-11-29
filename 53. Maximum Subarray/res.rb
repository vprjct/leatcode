# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    # 値が全て負数の時は最大値
    if (nums.all? {|n| n <= 0}) then
        return nums.max
    end
    
    # 値が負数になったときその合計値は直後の値に必ず劣る
    e = 0;
    sum = 0;
    res = 0;
    # 尺取法
    (nums.length).times do |s|
        while (e < nums.length && sum + nums[e] > 0)
            sum += nums[e]
            res = [res, sum].max
            e += 1
        end
        
        if s == e then
            e += 1 
        else
            sum -= nums[s]
        end
    end
    res
end

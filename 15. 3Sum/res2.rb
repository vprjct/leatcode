# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    nums.sort!
#    print nums
#    puts
    
    hash = Hash.new
    nums.each do |i|
        if (hash[i])
            hash[i] += 1 
        else
            hash[i] = 1
        end
    end

    uniq_nums = nums.uniq
#    print uniq_nums
#    puts
    
    res = Array.new
    n = uniq_nums.size
    n.times do |i|
#        puts "i = #{i}, uniq_nums[i] = #{uniq_nums[i]}"
        # uniqで潰したのでj=iから開始
        (i..n-1).each do |j|
            # i == j だと2個以上登録されている必要がある
            if i == j and hash[uniq_nums[i]] < 2
                next
            end
            tg = (uniq_nums[i] + uniq_nums[j]) * -1
#            puts "- j = #{j}, uniq_nums[j] = #{uniq_nums[j]} : target = #{tg}"
            if hash[tg]
                if hash[tg] < 2 and (uniq_nums[i] == tg || uniq_nums[j] == tg)
                    next
                end
                if (hash[tg] < 3 and uniq_nums[i] == tg and uniq_nums[j] == tg)
                    next
                end
#                puts "hash[tg] = #{hash[tg]}"
                res.push([uniq_nums[i], uniq_nums[j], tg].sort)
            end
        end
    end
    
    return res.uniq
end

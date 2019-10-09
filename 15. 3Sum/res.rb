# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    nums.sort!
#    print nums
#    puts
    
    hash = Hash.new
    nums.each_with_index do |i, j|
        # ソート済なので最後に出てきた値になる
        hash[i] = j
    end
    
    res = Array.new
    n = nums.size - 1
    n.times do |i|
#        puts "i = #{i}, nums[i] = #{nums[i]}"
        (i+1..n).each do |j|
            tg = (nums[i] + nums[j]) * -1
#            puts "- j = #{j}, nums[j] = #{nums[j]} : target = #{tg}"
            # hash[tg] <= j の時走査済み
            if hash[tg] and hash[tg] > j
#                puts "-- hash[tg] = #{hash[tg]}"
                res.push([nums[i], nums[j], tg])
            end
        end
    end
    
    return res.uniq
end

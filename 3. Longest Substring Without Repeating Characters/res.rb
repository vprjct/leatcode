# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    len = s.length
    ans = 0
    len.times do |i|
        (len-i).times do |j|
            str = s[i, j+1]
            if (str.length == str.split("").uniq.length) then
                if ans < str.length then
                    ans = str.length
                end
            end
        end
    end
    return ans
end

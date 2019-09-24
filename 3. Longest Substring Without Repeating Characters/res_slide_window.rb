# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    i = 0
    j = 0
    max = 0
    set = Set.new
    while i <= j && j <= s.length-1 do
        unless set.add?(s[j]) then
            set.delete(s[i])
            i += 1
        else
            j += 1
            max = [max, j-i].max
        end
    end
    return max
end

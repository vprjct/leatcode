# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    len = s.length
    i = 0
    j = 1
    max = 0
    while j <= s.length - i do
        str = s[i, j]
        if str.length == str.split("").uniq.length
            max = [max, str.length].max
            j = j + 1
        else
            i = i + 1
            j = j - 1
        end
    end
    return max
end

# @param {String} s
# @return {String}
def longest_palindrome(s)
    size = s.length
    res = "";
    size.times do |i|
        (size-i).times do |j|
            if j+1 > res.length and is_palindromic(s[i, j+1]) then
                res = s[i, j+1]
            end
        end
    end
    return res
end

def is_palindromic(s)
    size = s.length / 2
    return (s[0..size] == s.reverse[0..size])
end

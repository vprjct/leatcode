# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    is_palindromic(x.to_s)
end


def is_palindromic(s)
    size = s.length / 2
    return (s[0..size] == s.reverse[0..size])
end

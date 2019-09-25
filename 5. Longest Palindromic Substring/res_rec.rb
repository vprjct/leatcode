# @param {String} s
# @return {String}
def longest_palindrome(s)
    $set = Set.new
    return fc("", s)
end

def fc(res, s)
    return res if $set.include?(s)
    return res if res.length > s.length 
    return s if is_palindromic(s)

    $set.add(s)
    # 先頭除外
    res = fc(res, s[1, s.length-1])
    # 末尾除外
    res = fc(res, s[0, s.length-1])
    
    return res
end

def is_palindromic(s)
    size = s.length / 2
    return (s[0..size] == s.reverse[0..size])
end

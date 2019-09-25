# @param {String} s
# @return {String}
def longest_palindrome(s)
    size = s.length
    if size < 2
        return s
    end
    
    st = 0
    en = 0
    
    size.times do |i|
        # 奇数
        len_odd  = expandAroundCenter(s, i, i)
        # 偶数
        len_even = expandAroundCenter(s, i, i+1)
        
        len = [len_odd, len_even].max
        if en - st < len
            st = i - (len - 1) / 2
            en = i + len / 2
        end
    end
    return s[st..en]
end

def expandAroundCenter(s, l, r)
    while (l >= 0 && r < s.size && s[l] == s[r])
        l -= 1
        r += 1
    end
    return r - l - 1
end

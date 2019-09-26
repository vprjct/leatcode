# @param {String} s
# @return {String}
def longest_palindrome(s)
    size = s.length
    if size < 2
        return s
    end
    
    dp = Array.new(size) { Array.new(size+1, nil) }
    # DP初期値
    size.times do |i|
        dp[i][i] = true
        dp[i][i+1] = (s[i] == s[i+1])
    end
    
    max = 0
    res = ""
    # DP遷移
    size.times do |ti|
        i = (size-1) - ti
        size.times do |j|
            next if i > j
            if (dp[i][j] == nil) then
                dp[i][j] = (dp[i+1][j-1] && s[i] == s[j])
            end
            # 逆走しているので同値は上書き
            if (dp[i][j] && max <= j - i)
                max = j - i
                res = s[i..j]
            end
        end
    end
    return res
end

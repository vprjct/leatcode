# @param {String} s
# @return {String}
def longest_palindrome(s)
    size = s.length
    dp = Array.new(size) { Array.new(size+1, nil) }
    # DP初期値
    size.times do |i|
        dp[i][i] = true
        dp[i][i+1] = (s[i] == s[i+1])
    end
    print dp, "\n"
    
    # DP遷移
    size.times do |i|
        size.times do |j|
            next if i > j
            print s[i..j], " is ", dp[i][j], "\n" if dp[i][j] != nil
            next if dp[i][j] != nil
            dp[i][j] = (dp[i+1][j-1] && s[i] == s[j])
            print s[i..j], " is ", dp[i][j], "\n"
        end
    end
    print dp, "\n"
end

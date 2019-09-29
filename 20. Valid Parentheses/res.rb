# @param {String} s
# @return {Boolean}
def is_valid(s)
    return false if s.size % 2 != 0
    
    open_list  = ['(','{','[']
    close_list = [')','}',']']
    
    open_num = s.split("").count { |c| open_list.include?(c) }
    return false if open_num * 2 != s.length
    
    ctable = { '(' => ')', '{' => '}', '[' => ']' }
    str = ""
    s.split("").each do |c|
        if open_list.include?(c)
            str += c
        elsif close_list.include?(c)
            lc = str.slice!(str.length-1)
            if ctable[lc] != c
                return false
            end
        end
    end
    return true
end

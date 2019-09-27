# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    size = strs.size
    return "" if size == 0
    t_start = 0
    t_mid   = 0
    t_end   = strs.map(&:length).min - 1
    while t_start <= t_end do
        t_mid = (t_start + t_end) / 2
        t_str = strs[0][0..t_mid]
        
        is_start_with = true
        strs.each do |str|
            unless str.start_with?(t_str)
                is_start_with = false
                break
            end
        end
        if is_start_with
            t_start = t_mid + 1
        else
            t_end = t_mid - 1
        end
    end
    if t_end < 0
        return ""
    end
    strs[0][0..t_end]
end

# @param {String} str
# @return {Integer}
def my_atoi(str)
    n = str.to_i
    return -2147483648 if n < -2147483648
    return  2147483647 if n >  2147483647
    return n
end

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    a = haystack.index(needle)
    return a != nil ? a : -1
end

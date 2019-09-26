# @param {Integer} x
# @return {Integer}
def reverse(x)
    t = (x.positive?) ? 1 : -1
    n = x.to_s.reverse!.to_i * t
    if (n < -2147483648 || n > 2147483647)
        return 0
    else
        return n
    end
end

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    size = height.size
    max = 0
    l = 0
    r = size-1
    while l < r
        len = [height[l], height[r]].min * (r - l)
        max = [max, len].max
        if height[l] < height[r]
            l += 1
        else
            r -= 1
        end
    end
    max
end

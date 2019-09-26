# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    size = height.size
    r = 0
    size.times do |i|
        d = 0
        size.times do |j|
            next if i == j
            next if height[i] > height[j]
            if (j-i).abs > d
                d = (j-i).abs
            end            
        end
        r = [height[i]*d, r].max
    end
    r
end

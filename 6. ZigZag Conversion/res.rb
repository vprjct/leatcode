# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows <= 1
    move = 1
    res = Array.new
    # 初期化
    num_rows.times do |i|
        res[i] = ""
    end
    pos = 0;
    s.split("").each do |c|
        res[pos] += c
        if (pos == 0)
            move = 1
        end
        if (pos == num_rows-1)
            move = -1
        end
        pos += move
    end
    return res.join()
end

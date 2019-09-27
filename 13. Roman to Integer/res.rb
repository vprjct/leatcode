# @param {String} s
# @return {Integer}
def roman_to_int(s)
    hash = {
        "I" => 1,
        "V" => 5,
        "X" => 10,
        "L" => 50,
        "C" => 100,
        "D" => 500,
        "M" => 1000,
    }
    arr = s.split("").map!{|x| hash[x]}
    size = arr.length
    print s.split(""), "\n"
    print arr, "\n"
    size.times do |i|
        s1 = arr[i]
        s2 = arr[i+1]
        if ((s1 == 1   && (s2 == 5   || s2 == 10))   ||
            (s1 == 10  && (s2 == 50  || s2 == 100))  ||
            (s1 == 100 && (s2 == 500 || s2 == 1000)))
            arr[i] = s2 - s1
            arr[i+1] = 0
        end
    end
    print arr, "\n"
    arr.sum
end

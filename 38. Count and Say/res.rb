# @param {Integer} n
# @return {String}
def count_and_say(n)
    return 1.to_s if n == 1
    
    num = 1
    (n-1).times do
        num = count_and_say_sub(num)
        puts num
    end
    return num.to_s
end

def count_and_say_sub(n)
    str = ""
    
    str_n = n.to_s
    
    num = str_n[0];
    count = 1;
    (str_n.length-1).times do |i|
        if num != str_n[i+1]
            str += count.to_s
            str += num
            num = str_n[i+1]
            count = 1
        else
            count += 1
        end
    end
    str += count.to_s
    str += num
    str.to_i
end

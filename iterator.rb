# def three
#     puts yield 5
# end

# def once
#     puts "manoj"
#     yield
#     three {|num| num*3}
#     yield
#     puts "Rajput"
# end

# once { puts "Singh" }


# puts "error block array "

# def brother
#     if block_given?
#         yield
#    else
#         puts " please give body of block"
#    end
# end

# brother

num = (1..20).to_a
# puts num.select{|ele| ele.even?}


def my_selector(array)
    arr = []
    array.each do |ele|
        arr << ele if yield(ele)
    end
    arr
end

arr = my_selector(num) {|n| n.even?}
puts arr
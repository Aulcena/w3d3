# try putting array as the input
# track if start is  >= to end
# return answers in array
# add start in to answers array
# call range start + 1
# 2nd element == end 
#  the 3rd element of the answers is input array in the recursive call

def range(start, last)

    arr = []

    return arr if last <= start

    arr + range(start, last -1)

    range(start, last -1)

    arr

end

p range(1,5)
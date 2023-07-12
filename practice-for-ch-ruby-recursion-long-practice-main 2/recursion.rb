require "byebug"

# try putting array as the input
# track if start is  >= to end
# return answers in array
# add start in to answers array
# call range start + 1
# 2nd element == end
#  the 3rd element of the answers is input array in the recursive call

# def range(start, last)

#   return [] if last <= start

#   [start]+range(start+1, last)

# end

def both_range(start, last)
  arr =[]
  (start...last).each do |num|
    arr<<num
  end
  arr
end

# p range(1,5)
# p both_range(1,5)

def exp(base, pow)
  return 1 if pow==0
  base * exp(base, pow-1)
end


def exp_2(base, pow)
  return 1 if pow==0
  return base if pow==1

  if pow.even?
    recur = exp_2(base, pow/2)
    recur*recur
  else
    recur = exp_2(base, (pow-1)/2)
    base*recur*recur
  end
end

# p exp_2(2, 2)
class Array
  def deep_dup(arr)
    # debugger
    (0...arr.length).each do |i|
      if !arr[i].is_a?(Array)
        self<<arr[i]
      else
        deep_dup(arr[i])
      end
    end
    self
  end


end

a=[]


# p a.deep_dup([1,[4],[7,[2]]])


def fibonacci(n)

  return[0] if n == 1
  return [0,1] if n == 2


  recurred = fibonacci(n - 1)

  recurred << recurred[-1] + recurred[-2]

end

# p fibonacci(4)  #2


# debugger
def binary_search(array, target)
    left = 0
    right = array.length-1
    mid = array.length / 2

    return false if array.empty?
    return false if (mid == left && mid == right ) && array[mid] != target

      if array[mid] == target

        return true

      elsif array[mid] < target

        binary_search(array[mid+1..-1],target)

      else

        binary_search(array[0..mid-1],target)

      end


end

def binary_search_helper(array, target)
  if binary_search(array, target)
    return array.index(target)
  else
    nil
  end
end

p binary_search_helper([1, 2, 3], 1) # => 0
p binary_search_helper([2, 3, 4, 5], 3) # => 1
p binary_search_helper([2, 4, 6, 8, 10], 6) # => 2
p binary_search_helper([1, 3, 4, 5, 9], 5) # => 3
p binary_search_helper([1, 2, 3, 4, 5, 6], 6) # => 5
p binary_search_helper([1, 2, 3, 4, 5, 6], 0) # => nil
p binary_search_helper([1, 2, 3, 4, 5, 7], 6) # => nil



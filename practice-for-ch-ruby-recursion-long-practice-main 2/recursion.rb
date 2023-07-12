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


p a.deep_dup([1,[4],[7,[2]]])

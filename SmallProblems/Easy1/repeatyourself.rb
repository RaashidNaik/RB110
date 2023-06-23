# def repeat(string, num)
#   for i in 1..num 
#     puts string
#   end
# end

# repeat('Hello!', 3)

# Another solution

def repeat(string, num)
  num.times { puts string }
end

repeat('Hello!', 3)

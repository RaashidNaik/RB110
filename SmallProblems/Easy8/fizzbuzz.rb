def fizzbuzz(x, y)
  fibi_arr = []
  x.upto(y) do |num|
    if num % 3 == 0 && num % 5 == 0
      fibi_arr << "FizzBuzz"
    elsif num % 3 == 0 
      fibi_arr << "Fizz"
    elsif num % 5 == 0 
      fibi_arr << "Buzz"
    else
      fibi_arr << num.to_s
    end
  end
fibi_arr.join(", ")
end


p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

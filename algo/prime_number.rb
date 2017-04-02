# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
def is_prime?(number)
  factors = []
  (2..(Math.sqrt(number))).each do |divisible_by|
    if number % divisible_by == 0
      factors << divisible_by
      factors << (number / divisible_by)
    end
  end
  factors == [] ? true : false
end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

def highest_prime_number_under(number)
  prime_numbers = []
  (2..number).each do |num|
    if is_prime?(num)
      prime_numbers << num
    end
  end
  
  return prime_numbers.max
end
p is_prime?(7)
p highest_prime_number_under(200)
  

# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  array.inject(0){|sum,x| sum + x }
end

def max_2_sum(array)
  return 0 if array.empty?
	return array[0] if array.length == 1
	arr = array.sort.reverse!
	return arr[0] + arr[1]
end

def sum_to_n?(array, n)
  return false if array.empty? or array.length == 1
  #array.permutation(2).any? { |a, b| a + b == n }
  array.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  (s[0] =~ /[b-df-hj-np-tv-z]/i) ? true : false
end

def binary_multiple_of_4?(s)
  if (s) == "0"
    return true
  end
  return /^[01]*(00)$/.match(s)
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError.new("Incorrect isbn or price")
    end
    
    @isbn = isbn
    @price = price
    
  end
  
  def price_as_string
    sprintf("$%2.2f", @price)
  end
  
end

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  #return true if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if (s.length == 0)
  not( s.to_s.upcase.start_with?('A','E','I','O','U'))&& s.to_s[0,1][/[a-zA-Z]{1}/]
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  is = s.to_i
    if s == "0"
      return true
    elsif /[a-zA-Z^$3-9*]/.match(s)
      return false
    else
      if /^[10]*00$/.match(s) && is % 2 == 0
        return true
      else
        return false
      end
    end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_reader   :isbn
  attr_accessor :price

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def initialize(isbn, price)
    raise(ArgumentError, "ISBN should not be empty") if isbn==''
    raise ArgumentError.new("Price should not be empty")  if price == ''
    @isbn = isbn
    @price = Float(price)
    raise ArgumentError.new("Price has to be bigger than 0") if price <= 0
  end

  def price_as_string
    return sprintf("$%2.2f", price)
  end
end

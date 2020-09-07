# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).to_a.each do |combo|
    return true if n == combo.sum
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s =~ /[^01]/
  return s == "0" || s =~ /00$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn == "" || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$#{'%.2f' % price}"
  end
end

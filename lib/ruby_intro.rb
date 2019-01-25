# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  uniq_pairs = arr.combination(2).to_a.uniq # all unique pairs
  boolean_array = uniq_pairs.collect { |pair| pair.sum == n }
  boolean_array.any? true
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.match? /^[[[:alpha:]]&&[^AEIOUaeiou]]/
end

def binary_multiple_of_4? s
  s.match? /^0+$|^[01]*100$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError.new("Empty ISBN string")
    else
      @isbn = isbn
    end
    if price <= 0
      raise ArgumentError.new("invalid price")
    else
      @price = price
    end
  end

  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    if new_isbn.empty?
      raise ArgumentError.new("Empty ISBN string")
    else
      @isbn = new_isbn
    end
  end

  def price
    @price
  end
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError.new("Invalid price")
    else
      @price = new_price
    end
  end

  def price_as_string
    "$%.2f" % @price
  end
end

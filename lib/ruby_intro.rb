# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  arr.combination(2) 
    .to_a
    .uniq # all unique pairs constructed from array ARR
    .reject { |pair| pair.sum != n } # reject paris that are not summed to n
    .count > 0 # return true if exists such pair, false otherwise
end

# Part 2

def hello(name)
  "Hello, " + name
end
# autograder doesn't recognize match?, so I have to use math
def starts_with_consonant? s
  s.upcase.match(/^[[[:alpha:]]&&[^AEIOU]]/) != nil
end

def binary_multiple_of_4? s
  s.match(/^0+$|^[01]*100$/) != nil
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

# Implement your object-oriented solution here!

class EvenFibonacci
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def sum
    first_fibs = [1, 2]
    100.times { first_fibs << (first_fibs[-1] + first_fibs[-2])}
    first_fibs.select { |number| number.even? && number < limit }.inject(:+)
  end

end
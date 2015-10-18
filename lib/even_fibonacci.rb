# Implement your procedural solution here!

first_fibs = [1, 2]
100.times { first_fibs << (first_fibs[-1] + first_fibs[-2])}
def even_fibonacci_sum(limit)
  first_fibs = [1, 2]
  100.times { first_fibs << (first_fibs[-1] + first_fibs[-2])}
  result = first_fibs.select { |number| number.even? && number < limit }.inject(:+)
  result
end
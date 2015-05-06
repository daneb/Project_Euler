# Natural numbers
# Positive (one apple, two apple, three apply)

sum_of_squares = 0

def sum(n)
  total = 0
  (1..100).step(1) do |i|
    total = total + i
  end
  total
end

(1..100).step(1) do |i|
  sum_of_squares = sum_of_squares + (i * i)
end


total_natural = sum(100)
square_of_sum = total_natural * total_natural

puts square_of_sum - sum_of_squares


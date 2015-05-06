# Natural numbers
# Positive (one apple, two apple, three apply)

sum_of_squares = 0
total_natural = 0

(1..100).step(1) do |i|
  sum_of_squares = sum_of_squares + (i * i)
  total_natural = total_natural + i
end

puts total_natural ** 2 - sum_of_squares


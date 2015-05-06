(1..100).step(1) do |i|
  p "fizz" if (i % 3 == 0)
  p "buzz" if (i % 5 == 0)
  p "fizzbuzz" if ((i % 3 == 0) && (i % 5 == 0))
  p i
end

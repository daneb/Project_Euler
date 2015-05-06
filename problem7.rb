array = Array.new
stop_size = 10001

(2..1000000000).step(1) do |num|

  is_prime = true

  (2..num).step(1) do |temp|

    if (num % temp == 0 && num != temp)
      is_prime = false
      break
    end
  end

  (array << num) if is_prime
  break if array.length == stop_size

  p array.length

end

puts array[stop_size - 1]

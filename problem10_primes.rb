# Stack Level Too Deep
# Non-performant O(n)

limit = 2_000_000
primes = 2

def is_prime(value, x)
  prime = -1

  if(x == 1)
    return true
  elsif(value % x == 0)
    return false
  end
  is_prime(value, x - 1)
end

# Step odd as any even is at least divisible by 2, not making it a prime
(3..limit).step(2) do |outer|
    primes = primes + outer if is_prime(outer, outer - 1)
    puts outer
end

puts "Size of primes #{primes}"


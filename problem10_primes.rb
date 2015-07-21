require 'byebug'

limit = 2_000_000
primes = Queue.new

def is_prime(value, x)
  if(x == 1)
    return true
  elsif(((value % 2 == 0) || (value % x == 0)) && (x != 1))
    return false
  end
  is_prime(value, x - 1)
end

(2..limit).step(1) do |outer|
  primes << outer if is_prime(outer, outer - 1)
end

puts "Size of primes #{primes.length}"


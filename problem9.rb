require 'byebug'

def pythagorean_triple(a, b)
	square = Math.sqrt((a * a) + (b * b))
	return nil if ((square - square.round) != 0)
	square.round	
end

def determine_triplet(a, b=nil)
	b = a if b.nil?
	c = pythagorean_triple(a, b)
	return -1 if ((not c.nil?) && (a + b + c > 1000))
 	return a * b * c if ((not c.nil?) && (a + b + c == 1000))
	determine_triplet(a, (b + 1))
end

# Lowest pythorean triple is 3,4,5
(3..200).each { |n|
  result = determine_triplet(n)
  if (result > 0)
	puts "Got it #{result}"
	break
  else
  	puts 'Nothing found'
  end
}




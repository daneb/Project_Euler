require "byebug"

# This takes like 20 minutes
# The trick is to you use LCM
# Will research and refactor

smallest = 2520

all_evenly = false

while not all_evenly do

  (1..20).step(1) do |i|

    p "Step #{i}"

    if (smallest.to_i % i.to_i == 0)
      all_evenly = true
    else
      all_evenly = false
      break
    end

  end

  p "All evenly divisible: #{all_evenly}"

  if all_evenly == false
    smallest += 2
    p "Incrementing number: #{smallest}"
  end

end

p "Smallest = #{smallest}"

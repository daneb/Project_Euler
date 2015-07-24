require 'prime'

array = Array.new
upperbound = 2_000_000 - 1
composite = Math.sqrt(upperbound).floor
result = 0

(2..upperbound + 1).step(1) do 
  array << true
end

(2..composite).step(1) do |i|
  if array[i] == true
    (i*i..upperbound).step(i) do |x| 
      array[x] = false
    end
  end
end

(2..upperbound).step(1) do |n|
  if array[n] == true
    result = result + n
  end
end

puts "Sum of price numbers for < 2_000_000 = #{result}"
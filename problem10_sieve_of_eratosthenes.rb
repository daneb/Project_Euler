array = Array.new
upperbound = 2000000
composite = Math.sqrt(2000000).round

(2..upperbound).step(1) do 
  array << false
end

(2..composite).step(1) do |m|
  if array[m]
    ((k = m ** 2)..upperbound).step(k = k + m) do |x|
      array[x] = true
    end
  end
end

(composite..upperbound).step(1) do |m|
  if array[m] == false
    puts (m)
  end
end
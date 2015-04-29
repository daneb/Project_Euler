999.downto(900) do |digit1|

  999.downto(900) do |digit2|

    result = digit1.to_i * digit2.to_i

    if result == result.to_s.reverse.to_i
      p "This is a palindrome #{result}"
      exit
    else
      p "Not a palindrome #{result.to_s.reverse} for #{digit1} and #{digit2}"
    end
  end

end

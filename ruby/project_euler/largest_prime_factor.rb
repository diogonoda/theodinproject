def is_prime?(number)
  return false if number <=1

  (2..(number - 1)).each do |num|
    if (number % num == 0)
      return false
    end
  end

  return true
end

puts is_prime?(3)
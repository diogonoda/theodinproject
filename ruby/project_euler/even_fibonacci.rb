def next_fibo(fibo_numbers)
  if fibo_numbers[-1].nil?
    return 1
  elsif fibo_numbers[-2].nil?
    return 2
  else
    return fibo_numbers[-1] + fibo_numbers[-2]
  end
end

fibo_numbers = []
stored_fibo = nil
summed_even = 0

begin
  unless stored_fibo.nil?
    fibo_numbers << stored_fibo
    summed_even += stored_fibo if (stored_fibo % 2 == 1)
  end

  stored_fibo = next_fibo(fibo_numbers)
end while stored_fibo < 4000000

puts summed_even
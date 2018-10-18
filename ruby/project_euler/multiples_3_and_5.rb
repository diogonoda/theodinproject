number = 0

storage_number = 0
  
#while (number < 1000)
#  if (number % 3 == 0 || number % 5 == 0)
#    storage_number += number
#  end
#  number += 1
#end

(1..10).each do |number|
  puts number 
  if (number % 3 == 0 || number % 5 == 0)
    storage_number += number
    puts "storage number #{storage_number}"
  end
end

puts storage_number
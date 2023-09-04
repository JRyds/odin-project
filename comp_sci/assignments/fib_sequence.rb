# frozen_string_literal: true

def fibonacci(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end

end

print "Enter number: "
num = gets.chomp.to_i

puts "The result is #{fibonacci(num)}."


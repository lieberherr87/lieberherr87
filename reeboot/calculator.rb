def read(prompt, format)
  puts prompt
  input = gets.chomp
  until input =~ format # =~means matches
    puts "Invalid format!"
    puts prompt
    input = gets.chomp
  end
  input
end

a         = read("Please enter first number",           /\d+/).to_i
b         = read("Please enter second number",           /\d+/).to_i
operation = read("Please enter operator (+-*/):",   /[-\+\*\/]/)

puts "Please enter the operation (+-/*):"
operation = gets.chomp

if operation == "+"
  result = a + b
elsif operation == "-"
  result = a - b
elsif operation == "/"
  result = a / b
elsif operation == "*"
  result = a * b
else
  puts "Unknown operation!"
end


puts "The result is #{result}"


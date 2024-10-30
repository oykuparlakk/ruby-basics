#Numbers

puts "13.to_f: #{13.to_f}"
puts "6.even?: #{6.even?}"
puts "6.odd?: #{6.odd?}"

#Strings 

puts "------------------------------"
#Concatenation
puts "Hello" + " " + "World"
puts "Welcome " << "to " << "Odin!" 
puts "Welcome ".concat("to ").concat("Odin with concat func!") 

puts "------------------------------"
#Substrings
puts "hello"[0] 
puts "hello"[0..1]
puts "hello"[0, 4]
puts "hello"[-1] 
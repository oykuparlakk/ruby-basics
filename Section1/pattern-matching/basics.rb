grade = "C"

case grade
in "A" then puts "Amazing effort!"
in "B" then puts "Good work!"
in "C" then puts "Well done!"
in "D" then puts "Room for improvement"
else puts "See me"
end

=begin
That is because of how Ruby implements the === method 
on Integer vs on instances of Integer.
=end

puts "false" if 3 === Integer
puts "true" if Integer === 3


case {a: 'ant', b: 'ball', c:'cat'}
in { a: 'ant', **rest }
  p rest
end


case { a:'ant', b:'ball'}
in {a: 'ant', **nil}
  puts :no_match
in {a:'ant', b:'ball' }
  puts :no_match
end
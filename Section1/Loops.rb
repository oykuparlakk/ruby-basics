# loop do
#   puts "i: #{i}"
#   i += 1
#   break if i == 10
# end

# while i<10 do
#   puts "i: #{i}"
#   i += 1
# end

# until i >=10 do
#   puts "i: #{i}"
#   i += 1
# end

(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# for i in 0..5
#   puts "#{i} zaman"
# end
#

5.upto(10) { |num| print "#{num} " }

10.downto(5) { |num| print "#{num} " }

5.times do |number|
  puts "Alternative fact number #{number}"
end

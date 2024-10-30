room_tidy = true
puts 'I can play games in the room' if room_tidy == true

puts '1<2 true' if room_tidy == 1 < 2

puts 'Hot diggity damn, 1 is less than 2' if 1 < 2
puts 'Hot diggity damn, 1 is less than 2' unless 1 > 2

attack_by_land = false
attack_by_sea = true

if attack_by_land == true
  puts 'release the goat'
elsif attack_by_sea == true
  puts 'release the shark'
else
  puts 'release Kevin the octopus'
end


puts 5 <=> 10
puts 10 <=> 10
puts 10 <=> 5


grade = 'F'

did_i_pass = case grade
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end

puts did_i_pass

age = 19
puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts "Down with that sort of thing."
else
  puts "careful now!"
end

response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response
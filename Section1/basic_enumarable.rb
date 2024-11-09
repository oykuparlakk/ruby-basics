friends = %w[Sharon Leo Leila Brian Arun]
invited_list = []

for friend in friends do
  invited_list.push(friend) if friend != 'Brian'
end

print invited_list
puts

print(friends.select { |friend| friend != 'Brian' })
puts

print(friends.select! { |friend| friend != 'Brian' })
puts

print(friends.reject { |friend| friend == 'Brian' })
puts

friends.each { |friend| puts 'Hello, ' + friend }
puts

my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

puts '---------------------------------------'

my_hash = { 'one' => 1, 'two' => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }
puts '---------------------------------------'

my_hash.each { |pair| puts "the pair is #{pair}" }
puts '---------------------------------------'

# test = friends.each { |friend| puts friend.upcase }
# puts test

# test2 = friends.each { |friend| puts friend.upcase! }
# puts test2

fruits = %w[apple banana strawberry pineapple]
fruits.each_with_index { |fruit, index| puts fruit if index.even? }

puts '---------------------------------------'

shouting_at_friends = []
friends.each { |friend| shouting_at_friends.push(friend.upcase) }

puts shouting_at_friends
puts '---------------------------------------'
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
test = my_order.map { |item| item.gsub('medium', 'extra large') }

puts test

puts '---------------------------------------'

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
puts(responses.select { |_person, response| response == 'yes' })

puts '---------------------------------------'

puts 'Predicate methods -> include? , any? , all? , none? , count'

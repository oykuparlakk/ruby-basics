
=begin
puts 'EventManager initialized.'

lines = File.readlines('event_attendees.csv')
row_index = 0
lines.each do |line|
  row_index = row_index + 1
  next if row_index == 1
  columns = line.split(",")
  name = columns[2]
  puts name
end

=end
require 'csv'
puts 'EventManager initialized.'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  puts name
end

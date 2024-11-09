my_hash = {}
print my_hash
puts

# Accessing values
shoes = {
  'summer' => 'sandals',
  'winter' => 'boots'
}

print shoes['summer']

shoes['fall'] = 'sneakers'
print shoes
puts

shoes['summer'] = 'flip-flops'
print shoes
puts

shoes.delete('summer')
print shoes
puts

print shoes.keys
puts

print shoes.values
puts

shoes_test = {
  'deneme' => 'deneme',
  :deneme2 => 'deneme2',
  3 => 'deneme3'
}

print shoes_test.merge(shoes)

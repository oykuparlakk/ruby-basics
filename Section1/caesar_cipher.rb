puts 'Please enter the password that you want to encrypt:'
text = gets.chomp.downcase

puts 'Shift number:'
shift_number = gets.chomp.to_i

letters_hash = {}
('a'..'z').to_a.each_with_index do |letter, index|
  letters_hash[index + 1] = letter
end

def encrypt(text, shift_number, letters_hash)
  encrypted_text = ''

  text.each_char do |char|
    if letters_hash.has_value?(char)
      current_index = letters_hash.key(char)
      new_index = (current_index + shift_number - 1) % 26 + 1
      encrypted_text += letters_hash[new_index]
    else
      encrypted_text += char
    end
  end

  encrypted_text
end

encrypted_text = encrypt(text, shift_number, letters_hash)
puts "Encrypted text: #{encrypted_text}"

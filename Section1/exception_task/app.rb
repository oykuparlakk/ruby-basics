require_relative 'services/user_service'
require_relative 'exceptions/invalid_age_error'
require_relative 'exceptions/invalid_email_error'
require_relative 'exceptions/invalid_password_error'

begin
  age = 25
  email = 'test@example.com'
  password = 'password123'

  UserService.validate_user_input(age, email, password)
rescue InvalidAgeError => e
  puts "Hata: #{e.message} (Kod: #{e.code})"
rescue InvalidEmailError => e
  puts "Hata: #{e.message}"
rescue InvalidPasswordError => e
  puts "Hata: #{e.message}"
end

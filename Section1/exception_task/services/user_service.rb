require_relative '../exceptions/invalid_age_error'
require_relative '../exceptions/invalid_email_error'
require_relative '../exceptions/invalid_password_error'

class UserService
  def self.validate_user_input(age, email, password)
    validate_age(age)
    validate_email(email)
    validate_password(password)

    puts 'Kullanıcı başarıyla doğrulandı.'
  end

  def self.validate_age(age)
    raise InvalidAgeError, 'Yaş 18 ile 65 arasında olmalıdır.' unless (18..65).include?(age)
  end

  def self.validate_email(email)
    regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    raise InvalidEmailError, 'Geçersiz e-posta adresi.' unless email =~ regex
  end

  def self.validate_password(password)
    raise InvalidPasswordError, 'Parola en az 8 karakter olmalıdır.' unless password.length >= 8
  end
end

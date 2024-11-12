require_relative 'base_error'

class InvalidPasswordError < BaseError
  def initialize(msg = 'Şifre en az 8 karakter uzunluğunda olmalıdır')
    super(msg)
  end
end

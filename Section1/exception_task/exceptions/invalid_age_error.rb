require_relative 'base_error'

class InvalidAgeError < BaseError
  def initialize(message = 'Yaş 18 ile 65 arasında olmalıdır', code = 400)
    super(message, code)
  end
end

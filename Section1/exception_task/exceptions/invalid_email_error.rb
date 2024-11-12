require_relative 'base_error'

class InvalidEmailError < BaseError
  def initialize(msg = 'Geçersiz e-posta formatı')
    super(msg)
  end
end

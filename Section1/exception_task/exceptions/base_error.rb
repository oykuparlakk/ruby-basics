class BaseError < StandardError
  attr_reader :message, :code

  def initialize(message = 'Bir hata oluştu', code = nil)
    @message = message
    @code = code
    super(message)
  end
end

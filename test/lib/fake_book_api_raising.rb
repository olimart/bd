# Mock API library raising
#
# @example
#
#   FakeApiRaising.new(1111).call
#
# @param [String] ISBN
#
# @return [StandardError]
#

class FakeBookApiRaising
  attr_reader :isbn

  def initialize(isbn)
    @isbn = isbn
  end

  def call
    raise 'boom'
  end
end

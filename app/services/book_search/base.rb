module BookSearch
  class Base
    attr_reader :isbn
    
    def initialize(isbn, payload = nil)
      @isbn = isbn
    end

    def call
      payload.present? ? render(payload) : Book.new
    end

    private

      def render(book)
        BookDecorator::Base.new(book)
      end
  end
end

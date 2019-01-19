module BookSearch
  class Base
    def initialize(isbn)
      @isbn = isbn
    end

    def call
      raise NotImplementedError
    end
  end
end

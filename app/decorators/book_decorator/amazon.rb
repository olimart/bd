module BookDecorator
  class Amazon < Base
    def initialize(book)
      @book = book
    end

    def isbn
      # ASIN equals ISBN number for books
      @book.isbn
    end

    def title
      @book.get('ItemAttributes/Title')
    end

    def author
      if @book.get('ItemAttributes/Author').present?
        @book.get_array('Author').join(', ')
      else
        @book.get_array('Creator').join(', ')
      end
    end

    def editor
      @book.get('ItemAttributes/Manufacturer') || @book.get('ItemAttributes/Publisher')
    end

    def release_date
      @book.get('ItemAttributes/ReleaseDate')
    end
  end
end

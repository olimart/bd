module BookDecorator
  class Amazon < Base
    def isbn
      # ASIN equals ISBN number for books
      payload.isbn
    end

    def title
      payload.get('ItemAttributes/Title')
    end

    def author
      if payload.get('ItemAttributes/Author').present?
        payload.get_array('Author').join(', ')
      else
        payload.get_array('Creator').join(', ')
      end
    end

    def editor
      payload.get('ItemAttributes/Manufacturer') || payload.get('ItemAttributes/Publisher')
    end

    def release_date
      payload.get('ItemAttributes/ReleaseDate')
    end
  end
end

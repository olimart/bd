module BookDecorator
  class Base
    attr_reader :payload

    def initialize(payload)
      @payload = payload
    end

    def isbn
      payload&.isbn
    end

    def title
      payload&.title
    end

    def tome
      payload&.tome
    end

    def author
      payload&.author
    end

    def editor
      payload&.editor
    end

    def release_date
      payload&.release_date
    end

    def cover_url
      payload&.cover_url
    end
  end
end

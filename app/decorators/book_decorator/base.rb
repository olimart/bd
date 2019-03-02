module BookDecorator
  class Base
    def initialize(payload)
      @payload = payload
    end

    def isbn
      @payload.try(:isbn) || ""
    end

    def title
      @payload.try(:title) || ""
    end

    def tome
      @payload.try(:tome) || ""
    end

    def author
      @payload.try(:author) || ""
    end

    def editor
      @payload.try(:editor) || ""
    end

    def release_date
      @payload.try(:release_date) || ""
    end
  end
end

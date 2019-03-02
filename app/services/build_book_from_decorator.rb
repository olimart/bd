class BuildBookFromDecorator
  def initialize(decorator)
    @decorator = decorator
  end

  def call
    Book.new(attributes)
  end

  private

    def attributes
      {
        isbn: @decorator.isbn,
        title: @decorator.title,
        tome: @decorator.tome,
        author: @decorator.author,
        editor: @decorator.editor,
        release_date: @decorator.release_date,
      }
    end
end

# Mock API library to retrieve book
#
# @example
#
#   FakeApi.new(1111).call
#
# @param [String] ISBN
#
# @return [BookDecorator::Base]
#
class FakeBookApi
  attr_reader :isbn

  def initialize(isbn)
    @isbn = isbn
  end

  def call
    payload = OpenStruct.new(
      isbn: isbn,
      title: title,
      tome: tome,
      author: author,
      editor: editor,
      release_date: release_date,
      cover_url: cover_url
    )
    BookDecorator::Base.new(payload)
  end

  private

    def title
      "My book"
    end

    def tome
      (1..10).to_a.sample
    end

    def author
      "John Doe"
    end

    def editor
      "Dargaud"
    end

    def release_date
      "2000-01-01"
    end

    def cover_url
      "https://random.image.com"
    end
end

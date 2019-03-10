# Lookup a book from on its ISBN
#
# @example
#
#   BookSearch.new('111', 'BookSearch::Amazon')
#   BookSearch.new('111', 'fake_api')
#
# @param [String] ISBN
# @param [String] service The library to fetch book information
#
# @return [Hash] if success
#
class BookLookup
  def initialize(isbn, service)
    @isbn    = isbn
    @service = service
  end

  def call
    @payload = service_name.new(@isbn).call
    # TODO: service should return success? Else return {}
    format_response
  end

  private

    def service_name
      @service.classify.constantize
    end

    def format_response
      {
        isbn: @payload.isbn,
        title: @payload.title,
        tome: @payload.tome,
        author: @payload.author,
        editor: @payload.editor,
        release_date: @payload.release_date,
      }
    end
end
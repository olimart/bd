class BookSearchJob < ActiveJob::Base
  queue_as :default

  def perform(isbn, service)
    BookSearch.new(isbn, service).call
  end
end

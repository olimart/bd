class BookLookupJob < ApplicationJob
  queue_as :default

  def perform(isbn, service)
    BookLookup.new(isbn, service).call
  end
end

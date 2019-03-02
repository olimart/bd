class BookSearchJob < ActiveJob::Base
  queue_as :default

  def perform(isbn, service)
    request = service_name(service).new(isbn).call
  end

  private

    def service_name(service)
      service.classify.constantize
    end
end

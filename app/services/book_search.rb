class BookSearch
  def initialize(isbn, service)
    @isbn    = isbn
    @service = service
  end

  def call
    payload = service_name.new(@isbn).call
  end

  private

    def service_name
      @service.classify.constantize
    end
end

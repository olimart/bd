module BookSearch
  class AmazonScraper < Base
    # BookSearch::AmazonScraper.new('2803610523').call
    def call
      book = ::Scraper::Amazon::Book.new(isbn).call
      render(book)
    end

    private

      def render(book)
        BookDecorator::AmazonScraper.new(book)
      end
  end
end

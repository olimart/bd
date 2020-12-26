# frozen_string_literal: true

module BookSearch
  # AMZN Product Advertising API
  class Amazon < Base
    def call
      book = ::Amazon::Ecs.item_lookup(isbn, opts = options).items.first
      render(book) if book.present?
    end

    private

      def options
        {
          response_group: "Medium",
          country: "fr"
        }
      end

      def render(book)
        BookDecorator::Amazon.new(book)
      end
  end
end

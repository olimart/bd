module BookSearch
  # AMZN Product Advertising API
  class Amazon < Base
    def call
      ::Amazon::Ecs.item_lookup(@isbn, opts = options).items.first
    end

    private

      def options
        {
          response_group: 'Medium',
          country: 'fr'
        }
      end
  end
end

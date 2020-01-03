# frozen_string_literal: true

# Ruby function to scrap book from Amazon website
#
# @example
#
#   Scraper::Amazon::Book.new('2803610523').call
#
# @param [String] ISBN book number
# @param [String] Locale. Amazon TLD
#
# @return [Hash]
#
module Scraper
  module Amazon
    class Book < Scraper::Base
      BASE_PATH = 'https://www.amazon'

      attr_reader :isbn, :locale

      def initialize(isbn, locale = 'fr')
        @isbn = isbn
        @locale = locale
      end

      def call
        request
        runner
      rescue OpenURI::HTTPError
        {}
      end

      private

        def uri
          @uri ||= "#{BASE_PATH}.#{locale}/dp/#{isbn}"
        end

        def runner
          title = request.at_css('[id="productTitle"]').text.strip
          author = request.css('[class="author notFaded"]').css('a').map { |x| x.text }.join(", ").strip
          tome = request.at_css('[id="seriesTitle_feature_div"]').css('span').first.try(:text).try(:delete, "^0-9")
          details = request.at_css('[id="detail_bullets_id"]').at_css('[class="content"]').css("ul")
          release_date = request.css('[class="a-size-medium a-color-secondary a-text-normal"]').last.text.delete('/w-–').try(:strip)
          serie = details.css('li').
            select {|x| x.text.include?('Collection')}.
            map { |x| x.text }.first.
            gsub('Collection : ', '').
            strip
          editor = details.css('li').
            select {|x| x.text.include?('Editeur')}.
            map { |x| x.text }.first.
            split(';').first.
            gsub('Editeur : ', '').
            strip
          book_cover = request.at_css('[id="img-canvas"] img')
            .attr('data-a-dynamic-image')
            .split(':')
            .second
            .delete('\"')
          cover_url = "https:#{book_cover}"

          formatted_response(title, tome, serie, author, editor, cover_url, release_date)
        end

        def formatted_response(title, tome, serie, author, editor, cover_url, release_date = nil)
          h = {}
          h[:isbn]         = isbn.to_s
          h[:title]        = title
          h[:tome]         = tome
          h[:author]       = author
          h[:editor]       = editor
          h[:serie]        = serie
          h[:cover_url]    = cover_url
          h[:release_date] = release_date
          h
        end
    end
  end
end

# frozen_string_literal: true

# Scrap releases for a given month & year
#
# @example
#
#   Scraper::Bdgest::Release.new('01', '2020').call
#
# @param [String] month full month number starting with 0 if applicable
# @param [String] year full year number with 4 digits
#
#
# @return [Array]
#
module Scraper
  module Bdgest
    class Release < Scraper::Base
      BASE_PATH = 'https://www.bdgest.com/sorties_bd'

      attr_reader :month, :year

      def initialize(month, year)
        @month = '%02i' % month
        @year = year
      end

      URI = "https://www.bdgest.com/sorties_bd"

      def call
        raise 'Year must be 4 digits long' and return if year.to_s.size != 4
        request
        runner
      rescue OpenURI::HTTPError
        []
      end

      private

        def uri
          @uri ||= "#{BASE_PATH}?DL=#{month}/#{year}&Origine=1"
        end

        def runner
          doc = request.search('.gallery-couv-large > li')
          doc.map { |book| formatted_book(book) }
        end

        def formatted_book(xml_element)
          serie, title, tome = extract_details(xml_element.children.at_css('span').content)
          {
            serie: serie,
            title: title,
            tome: tome.try(:delete, '^0-9'),
            editor: xml_element.children.at_css('a.editeur_sorties').content.try(:strip),
            url: xml_element.children.at_css('a').attributes['href'].value,
            cover_url: xml_element.children.at_css('a > img').attributes['src'].value
          }
        end

        def extract_details(book_summary)
          array = book_summary.split('-').map { |x| x.strip }
          array.insert(1, nil) if array.size == 2
          array
        end
    end
  end
end

# frozen_string_literal: true

require "nokogiri"
require "open-uri"

module Scraper
  class Base
    private

      def uri
        raise NotImplementedError
      end

      def request
        @request ||= Nokogiri::HTML(URI.open(uri, "User-Agent" => user_agent))
      end

      def user_agent
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.854.0 Safari/535.2"
      end
  end
end

require 'minitest/mock'
require 'test_helper'

class Scraper::Amazon::BookTest < ActiveSupport::TestCase
  test "should return a hash if success - revision 20201226" do
    isbn = "2803610523_20201226"
    request = scraper(isbn)
    payload = content(isbn)

    request.stub(:request, payload) do
      service = request.call
      assert_equal Hash, service.class
      assert_equal isbn, service[:isbn]
      assert_equal 'Thorgal, tome 19 : La Forteresse invisible', service[:title]
      assert_nil service[:serie]
      assert_equal '19', service[:tome]
      assert_equal 'Grzegorz Rosinski, Jean Van Hamme', service[:author]
      assert_equal 'Le Lombard; 1re édition (1 novembre 1993)', service[:editor]
      assert_nil service[:release_date]
      assert_equal 'https://images-na.ssl-images-amazon.com/images/I/41e1SNiHZzL._SX375_BO1,204,203,200_.jpg', service[:cover_url]
    end
  end

  private

    def scraper(isbn)
      @scraper ||= Scraper::Amazon::Book.new(isbn)
    end

    def content(isbn)
      fixture = "./test/fixtures/amazon/book_#{isbn}.html"
      @content ||= Nokogiri::HTML(File.read(fixture))
    end
end

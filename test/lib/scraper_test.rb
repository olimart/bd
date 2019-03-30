require 'test_helper'

class ScraperTest < ActiveSupport::TestCase
  setup do
    @isbn = '2803610523'
    fixture = "./test/fixtures/amazon/book_#{@isbn}.html"
    @content = File.read(fixture)
  end

  test "should return a hash if success" do
    scraper = Scraper.new(@isbn)
    # a stub is just a redefinition of the method, nothing more
    def request; @content; end
    service = scraper.call

    assert_equal Hash, service.class
    assert_equal @isbn, service[:isbn]
    assert_equal 'Thorgal, tome 19 : La Forteresse invisible', service[:title]
    assert_equal 'Thorgal', service[:serie]
    assert_equal '19', service[:tome]
    assert_equal 'Grzegorz Rosinski, Jean Van Hamme', service[:author]
    assert_equal 'Le Lombard', service[:editor]
    assert_equal '1993', service[:release_date]
    assert_equal 'https://images-na.ssl-images-amazon.com/images/I/51eBoWzQQbL._SX258_BO1,204,203,200_.jpg', service[:cover_url]
  end
end

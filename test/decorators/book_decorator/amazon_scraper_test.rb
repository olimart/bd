require 'test_helper'

class BookDecorator::AmazonScraperTest < ActiveSupport::TestCase
  setup do
    @payload = {
      isbn: "2803610523",
      title: "Thorgal, tome 19 : La Forteresse invisible",
      tome: "19",
      author: "Grzegorz Rosinski, Jean Van Hamme",
      editor: "Le Lombard",
      cover_url: "",
      release_date: "1993"
    }
    @decorator = BookDecorator::AmazonScraper.new(@payload)
  end

  test "should return a BookDecorator object" do
    assert_equal BookDecorator::AmazonScraper, @decorator.class
  end

  test "should make attributes available as method" do
    assert_equal @decorator.isbn, @payload[:isbn]
    assert_equal @decorator.title, @payload[:title]
    assert_equal @decorator.tome, @payload[:tome]
    assert_equal @decorator.author, @payload[:author]
    assert_equal @decorator.editor, @payload[:editor]
    assert_equal @decorator.release_date, @payload[:release_date]
    assert_equal @decorator.cover_url, @payload[:cover_url]
  end
end

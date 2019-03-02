require 'test_helper'
require_relative '../lib/fake_api.rb'

class BuildBookFromDecoratorTest < ActiveSupport::TestCase
  before do
    @decorator = BookSearch.new(111, 'fake_api').call
    @service = BuildBookFromDecorator.new(@decorator).call
  end

  test "should return a book object" do
    assert_equal Book, @service.class
  end

  test "should return a book object" do
    assert_equal BookDecorator::Base, service.class
    assert_equal @decorator.isbn, @service.isbn
    assert_equal @decorator.title, @service.title
    assert_equal @decorator.tome, @service.tome
    assert_equal @decorator.author, @service.author
    assert_equal @decorator.editor, @service.editor
    assert_equal @decorator.release_date, @service.release_date
  end
end

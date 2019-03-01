require 'test_helper'
require_relative '../lib/fake_api.rb'

class BookSearchTest < ActiveSupport::TestCase
  test "should return a decorated book object" do
    service = BookSearch.new(111, 'fake_api').call

    assert_equal BookDecorator::Base, service.class
    assert_not_nil service.isbn
    assert_not_nil service.title
    assert_not_nil service.tome
    assert_not_nil service.author
    assert_not_nil service.editor
    assert_not_nil service.release_date
  end
end

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'has valid test data' do
    skip('To Fix')
    Book.find_each do |book|
      assert_valid book
    end
  end
end

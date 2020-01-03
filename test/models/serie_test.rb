require 'test_helper'

class SerieTest < ActiveSupport::TestCase
  test 'has valid test data' do
    Serie.find_each do |serie|
      assert_valid serie
    end
  end

  test 'should strip name on save' do
    Serie.create!(name: '  My Serie  ')
    assert_equal 'My Serie', Serie.last.name
  end
end

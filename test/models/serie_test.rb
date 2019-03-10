require 'test_helper'

class SerieTest < ActiveSupport::TestCase
  test 'has valid test data' do
    Serie.find_each do |serie|
      assert_valid serie
    end
  end
end

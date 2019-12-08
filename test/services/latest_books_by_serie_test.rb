require 'test_helper'

class LatestBooksBySerieTest < ActiveSupport::TestCase
  test 'should return an array of books' do
    assert_equal Array, service.class
  end

  test 'should return the latest tome for each serie' do
    assert_equal 2, service.count
    assert_equal series(:one).name, service.first[:serie]
    assert_equal books(:three).tome, service.first[:tome]
  end

  private

    def service
      @service ||= LatestBooksBySerie.new.call
    end
end

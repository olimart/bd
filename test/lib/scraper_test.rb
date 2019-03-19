require 'test_helper'

class ScraperTest < ActiveSupport::TestCase
  test "should return a hash if success" do
    skip('TODO: mock Nokogiri object')
    service = Scraper.new('2803610523').call

    assert_equal Hash, service.class
    assert_not_nil service[:isbn]
    assert_not_nil service[:title]
    assert_not_nil service[:tome]
    assert_not_nil service[:author]
    assert_not_nil service[:editor]
    assert_not_nil service[:release_date]
    assert_not_nil service[:cover_url]
  end
end

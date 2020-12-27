require "test_helper"

require_relative "../lib/fake_releases_api.rb"

class PortfolioReleaseTest < ActiveSupport::TestCase
  test "should return an array" do
    assert_equal [], service
  end

  test "should only return books matching an existing serie" do
    serie = FakeReleasesApi.new("01", "2020").call.first[:serie]
    Serie.create!(name: serie)

    assert_equal 2, service.size
    assert_equal service.pluck(:serie).uniq, [serie]
  end

  private

    def service
      @service ||= PortfolioRelease.new(
        month: "01", year: "2020", service: FakeReleasesApi).call
    end
end

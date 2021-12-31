require "test_helper"

require_relative "../lib/fake_book_api_raising.rb"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should post amazon" do
    post search_amazon_url, params: { q: "2505061637" }, xhr: true
    assert_response :success
    assert_match /<img class="card-img-top"/i, response.body
  end

  test "should handle error when searching" do
    skip("revisit if needed")
    params = { q: "2505061637", scraper: "fake_book_api_raising" }
    post search_amazon_url, params: params, xhr: true
    assert_response :success
    assert_match /<p class="alert alert-danger">boom/i, response.body
  end

  test "should return early if missing query param" do
    post search_amazon_url, xhr: true
    assert_response :success
    assert_match /<p class="alert alert-warning">/i, response.body
  end
end

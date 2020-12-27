require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
    @valid_params = { title: 'My book', isbn: '123456', serie_attributes: { name: 'New serie' } }
  end

  test "should get index" do
    get books_path
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get new_book_path
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_path, params: { book: @valid_params }, xhr: true
    end

    assert_response :success
  end

  test "should show book" do
    get book_path(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_path(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_path(@book), params: { book: { title: 'New title', serie_id: series(:one).id } }, xhr: true
    assert_response :success
    assert_equal 'New title', @book.reload.title
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_path
  end

  test 'should search on AMZN' do
    post search_on_amazon_books_path, params: { q: '2505061637' }, xhr: true
    assert_response :success
    assert_match /<div class=\\'thumbnail\\'>/i, response.body
  end

  test 'should search on AMZN JS' do
    post search_on_amazon_books_path, params: { q: '2505061637', scraper: 'fake_' }, xhr: true
    end
    assert_response :success
    assert_match /<div class=\\'thumbnail\\'>/i, response.body
  end

  test 'should return early if missing query param while searching' do
    post search_on_amazon_books_path, xhr: true
    assert_response :success
    assert_match /<p class='alert alert-danger'>/i, response.body
  end
end

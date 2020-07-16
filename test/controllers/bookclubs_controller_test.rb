require 'test_helper'

class BookclubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookclub = bookclubs(:one)
  end

  test "should get index" do
    get bookclubs_url, as: :json
    assert_response :success
  end

  test "should create bookclub" do
    assert_difference('Bookclub.count') do
      post bookclubs_url, params: { bookclub: { genre: @bookclub.genre, name: @bookclub.name } }, as: :json
    end

    assert_response 201
  end

  test "should show bookclub" do
    get bookclub_url(@bookclub), as: :json
    assert_response :success
  end

  test "should update bookclub" do
    patch bookclub_url(@bookclub), params: { bookclub: { genre: @bookclub.genre, name: @bookclub.name } }, as: :json
    assert_response 200
  end

  test "should destroy bookclub" do
    assert_difference('Bookclub.count', -1) do
      delete bookclub_url(@bookclub), as: :json
    end

    assert_response 204
  end
end

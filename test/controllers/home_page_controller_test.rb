require "test_helper"

class HomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_page_index_url
    assert_response :success
  end

  test "should get show" do
    get home_page_show_url
    assert_response :success
  end

  test "should get create" do
    get home_page_create_url
    assert_response :success
  end

  test "should get update" do
    get home_page_update_url
    assert_response :success
  end

  test "should get destroy" do
    get home_page_destroy_url
    assert_response :success
  end
end

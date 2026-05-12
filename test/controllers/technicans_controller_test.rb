require "test_helper"

class TechnicansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technican = technicans(:one)
  end

  test "should get index" do
    get technicans_url
    assert_response :success
  end

  test "should get new" do
    get new_technican_url
    assert_response :success
  end

  test "should create technican" do
    assert_difference("Technican.count") do
      post technicans_url, params: { technican: { name: @technican.name } }
    end

    assert_redirected_to technican_url(Technican.last)
  end

  test "should show technican" do
    get technican_url(@technican)
    assert_response :success
  end

  test "should get edit" do
    get edit_technican_url(@technican)
    assert_response :success
  end

  test "should update technican" do
    patch technican_url(@technican), params: { technican: { name: @technican.name } }
    assert_redirected_to technican_url(@technican)
  end

  test "should destroy technican" do
    assert_difference("Technican.count", -1) do
      delete technican_url(@technican)
    end

    assert_redirected_to technicans_url
  end
end

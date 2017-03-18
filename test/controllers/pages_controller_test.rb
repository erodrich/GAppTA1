require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get about_me" do
    get pages_about_me_url
    assert_response :success
  end

  test "should get services" do
    get pages_services_url
    assert_response :success
  end

end

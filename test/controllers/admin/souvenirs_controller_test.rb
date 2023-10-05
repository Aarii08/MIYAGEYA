require "test_helper"

class Admin::SouvenirsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_souvenirs_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_souvenirs_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_souvenirs_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_souvenirs_edit_url
    assert_response :success
  end
end

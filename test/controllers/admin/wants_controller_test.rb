require "test_helper"

class Admin::WantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_wants_index_url
    assert_response :success
  end
end

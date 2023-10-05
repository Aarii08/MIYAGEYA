require "test_helper"

class Public::SouvenirsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_souvenirs_index_url
    assert_response :success
  end

  test "should get show" do
    get public_souvenirs_show_url
    assert_response :success
  end

  test "should get new" do
    get public_souvenirs_new_url
    assert_response :success
  end

  test "should get search_prefecture" do
    get public_souvenirs_search_prefecture_url
    assert_response :success
  end

  test "should get search_category" do
    get public_souvenirs_search_category_url
    assert_response :success
  end

  test "should get search_souvenir" do
    get public_souvenirs_search_souvenir_url
    assert_response :success
  end
end

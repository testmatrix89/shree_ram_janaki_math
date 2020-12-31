require 'test_helper'

class SanskritiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sanskrities_index_url
    assert_response :success
  end

  test "should get show" do
    get sanskrities_show_url
    assert_response :success
  end

end

require 'test_helper'

class SofasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sofa = sofas(:one)
  end

  test "should get index" do
    get sofas_url
    assert_response :success
  end

  test "should get new" do
    get new_sofa_url
    assert_response :success
  end

  test "should create sofa" do
    assert_difference('Sofa.count') do
      post sofas_url, params: { sofa: { image: @sofa.image, sofadesc: @sofa.sofadesc, sofatitle: @sofa.sofatitle } }
    end

    assert_redirected_to sofa_url(Sofa.last)
  end

  test "should show sofa" do
    get sofa_url(@sofa)
    assert_response :success
  end

  test "should get edit" do
    get edit_sofa_url(@sofa)
    assert_response :success
  end

  test "should update sofa" do
    patch sofa_url(@sofa), params: { sofa: { image: @sofa.image, sofadesc: @sofa.sofadesc, sofatitle: @sofa.sofatitle } }
    assert_redirected_to sofa_url(@sofa)
  end

  test "should destroy sofa" do
    assert_difference('Sofa.count', -1) do
      delete sofa_url(@sofa)
    end

    assert_redirected_to sofas_url
  end
end

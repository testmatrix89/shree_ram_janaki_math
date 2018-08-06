require 'test_helper'

class CotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cot = cots(:one)
  end

  test "should get index" do
    get cots_url
    assert_response :success
  end

  test "should get new" do
    get new_cot_url
    assert_response :success
  end

  test "should create cot" do
    assert_difference('Cot.count') do
      post cots_url, params: { cot: { cotdesc: @cot.cotdesc, cottitle: @cot.cottitle } }
    end

    assert_redirected_to cot_url(Cot.last)
  end

  test "should show cot" do
    get cot_url(@cot)
    assert_response :success
  end

  test "should get edit" do
    get edit_cot_url(@cot)
    assert_response :success
  end

  test "should update cot" do
    patch cot_url(@cot), params: { cot: { cotdesc: @cot.cotdesc, cottitle: @cot.cottitle } }
    assert_redirected_to cot_url(@cot)
  end

  test "should destroy cot" do
    assert_difference('Cot.count', -1) do
      delete cot_url(@cot)
    end

    assert_redirected_to cots_url
  end
end

require 'test_helper'

class DiningtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diningtable = diningtables(:one)
  end

  test "should get index" do
    get diningtables_url
    assert_response :success
  end

  test "should get new" do
    get new_diningtable_url
    assert_response :success
  end

  test "should create diningtable" do
    assert_difference('Diningtable.count') do
      post diningtables_url, params: { diningtable: { diningdesc: @diningtable.diningdesc, diningtitle: @diningtable.diningtitle, image: @diningtable.image } }
    end

    assert_redirected_to diningtable_url(Diningtable.last)
  end

  test "should show diningtable" do
    get diningtable_url(@diningtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_diningtable_url(@diningtable)
    assert_response :success
  end

  test "should update diningtable" do
    patch diningtable_url(@diningtable), params: { diningtable: { diningdesc: @diningtable.diningdesc, diningtitle: @diningtable.diningtitle, image: @diningtable.image } }
    assert_redirected_to diningtable_url(@diningtable)
  end

  test "should destroy diningtable" do
    assert_difference('Diningtable.count', -1) do
      delete diningtable_url(@diningtable)
    end

    assert_redirected_to diningtables_url
  end
end

require 'test_helper'

class IncomeAndExpenseDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get income_and_expense_details_index_url
    assert_response :success
  end

  test "should get show" do
    get income_and_expense_details_show_url
    assert_response :success
  end

end

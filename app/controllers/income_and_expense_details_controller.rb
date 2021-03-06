class IncomeAndExpenseDetailsController < ApplicationController
  def index
    @total_income_details = IncomeAmount.all
    @total_Expense_details = ExpensesAmount.all
    @total_money_people_have_details = PeopleWhichHaveMoney.all
  end

  def show
  end
end

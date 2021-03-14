class IncomeAndExpenseDetailsController < ApplicationController
  def index
    @income_details = IncomeAmount.all
    @Expense_details = ExpensesAmount.all
    @money_people_have_details = PeopleWhichHaveMoney.all

    @total_income_amount = IncomeAmount.total_income
    @total_expense_amount = ExpensesAmount.total_expense
    @total_amount_people_have = PeopleWhichHaveMoney.total_people_have
  end

  def show
  end
end

class ExpensesAmount < ApplicationRecord
  def self.total_expense
    ExpensesAmount.sum(:expense_amount)
  end
end

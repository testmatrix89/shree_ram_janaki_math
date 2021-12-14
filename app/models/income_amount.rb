class IncomeAmount < ApplicationRecord

  def self.total_income
    IncomeAmount.sum(:total_amount_received)
  end
end

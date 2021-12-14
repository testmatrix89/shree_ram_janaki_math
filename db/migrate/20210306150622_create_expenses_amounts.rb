class CreateExpensesAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses_amounts do |t|
      t.string :expense_title
      t.datetime :Expense_date
      t.decimal :expense_amount
      t.string :name_of_expense_done
      t.text :expense_description

      t.timestamps
    end
  end
end

class CreateIncomeAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :income_amounts do |t|
      t.decimal :total_amount_received
      t.datetime :date_to_taken_amount
      t.string :name_of_amount_receiver
      t.string :name_of_amount_taken_from
      t.text :description

      t.timestamps
    end
  end
end

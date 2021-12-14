class CreatePeopleWhichHaveMoneys < ActiveRecord::Migration[6.0]
  def change
    create_table :people_which_have_moneys do |t|
      t.string :persone_name
      t.datetime :taken_date
      t.decimal :taken_amount
      t.text :description

      t.timestamps
    end
  end
end

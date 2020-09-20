class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :colour_options
      t.decimal :discount
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end

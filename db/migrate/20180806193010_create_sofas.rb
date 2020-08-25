class CreateSofas < ActiveRecord::Migration[5.2]
  def change
    create_table :sofas do |t|
      t.string :title
      t.string :description
      t.string :colour_options
      t.string :price
      t.string :discount
      t.string :image

      t.timestamps
    end
  end
end

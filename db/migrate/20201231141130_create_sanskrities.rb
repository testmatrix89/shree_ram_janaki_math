class CreateSanskrities < ActiveRecord::Migration[6.0]
  def change
    create_table :sanskrities do |t|
      t.string :title
      t.text :description
      t.json :image
      t.string :topic
      t.string :slug

      t.timestamps
    end
    add_index :sanskrities, :slug, unique: true
  end
end

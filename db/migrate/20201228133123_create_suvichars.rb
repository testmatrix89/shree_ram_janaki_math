class CreateSuvichars < ActiveRecord::Migration[6.0]
  def change
    create_table :suvichars do |t|
      t.string :suvichar_title
      t.json :suvichar_image
      t.text :suvichar_text
      t.string :slug

      t.timestamps
    end
    add_index :suvichars, :slug, unique: true
  end
end

class CreateDevSthans < ActiveRecord::Migration[6.0]
  def change
    create_table :dev_sthans do |t|
      t.string :sthan_name
      t.json :sthan_image
      t.text :sthan_description
      t.string :label

      t.timestamps
    end
  end
end

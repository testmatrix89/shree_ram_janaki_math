class CreateMathSthans < ActiveRecord::Migration[6.0]
  def change
    create_table :math_sthans do |t|
      t.string :sthan_name
      t.json :sthan_image
      t.text :sthan_description

      t.timestamps
    end
  end
end

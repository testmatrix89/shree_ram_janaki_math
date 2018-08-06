class CreateMattresses < ActiveRecord::Migration[5.2]
  def change
    create_table :mattresses do |t|
      t.string :matresstitle
      t.string :mattressdesc
      t.string :image

      t.timestamps
    end
  end
end

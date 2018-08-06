class CreateSofas < ActiveRecord::Migration[5.2]
  def change
    create_table :sofas do |t|
      t.string :sofatitle
      t.string :sofadesc
      t.string :image

      t.timestamps
    end
  end
end

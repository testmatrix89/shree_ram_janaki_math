class CreateCots < ActiveRecord::Migration[5.2]
  def change
    create_table :cots do |t|
      t.string :cottitle
      t.string :cotdesc

      t.timestamps
    end
  end
end

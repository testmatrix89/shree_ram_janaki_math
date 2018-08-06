class CreateDiningtables < ActiveRecord::Migration[5.2]
  def change
    create_table :diningtables do |t|
      t.string :diningtitle
      t.string :diningdesc
      t.string :image

      t.timestamps
    end
  end
end

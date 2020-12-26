class AddSlugToDevSthans < ActiveRecord::Migration[6.0]
  def change
    add_column :dev_sthans, :slug, :string
    add_index :dev_sthans, :slug, unique: true
  end
end

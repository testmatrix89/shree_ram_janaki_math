class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :program_name
      t.datetime :program_date
      t.string :program_place
      t.string :program_activity
      t.text :program_description

      t.timestamps
    end
  end
end

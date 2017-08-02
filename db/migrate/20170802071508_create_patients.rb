class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name, limit: 60, null: false

      t.timestamps(null: false)
    end
    add_index :patients, :name
  end
end

class CreatePhysicians < ActiveRecord::Migration[5.1]
  def change
    create_table :physicians do |t|
      t.string :name, limit: 60, null: false

      t.timestamps(null: false)
    end
    add_index :physicians, :name
  end
end

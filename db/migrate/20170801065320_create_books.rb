class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name, limit: 60, null: false, index: {unique: true}

      t.timestamps(null: false)
    end
    # add_index :books, :name
  end
end

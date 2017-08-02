class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body, limit: 500, null: false
      t.references :book, null: false, foreign_key: true

      t.timestamps(null: false)
    end
  end
end

class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :name
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end

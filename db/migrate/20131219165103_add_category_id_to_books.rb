class AddCategoryIdToBooks < ActiveRecord::Migration
  def up
    add_column :books, :category_id, :integer
  end

  def down
    remove_column :books, :category_id
  end
end

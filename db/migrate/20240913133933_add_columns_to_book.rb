class AddColumnsToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :author, :string
    add_column :books, :isbn, :string
  end
end

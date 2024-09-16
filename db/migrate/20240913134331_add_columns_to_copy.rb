class AddColumnsToCopy < ActiveRecord::Migration[7.0]
  def change
    add_column :copies, :borrower, :string
    add_column :copies, :due_date, :string
    add_column :copies, :book_id, :integer
    add_foreign_key :copies, :books
  end
end

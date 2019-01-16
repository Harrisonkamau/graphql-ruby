class AddBooksToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :books, :string, array: true, default: []
  end
end

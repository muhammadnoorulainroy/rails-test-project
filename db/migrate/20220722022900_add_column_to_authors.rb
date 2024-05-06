class AddColumnToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :email, :string
  end
end

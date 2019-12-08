class AddCoverUrlToBooks < ActiveRecord::Migration[4.2]
  def change
    add_column :books, :cover_url, :string
  end
end

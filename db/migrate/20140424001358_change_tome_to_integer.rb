class ChangeTomeToInteger < ActiveRecord::Migration
  def change
  	add_column :books, :tome_tmp, :integer

  	Book.all.each do |book|
      book.tome_tmp = book.tome.to_i
      book.save!
    end

    remove_column :books, :tome
    rename_column :books, :tome_tmp, :tome
  end
end

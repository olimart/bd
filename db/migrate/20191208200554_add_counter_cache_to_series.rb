class AddCounterCacheToSeries < ActiveRecord::Migration[6.0]
  def change
    add_column :series, :books_count, :integer, default: 0
    change_column :series, :books_count, :integer, null: false
  end
end

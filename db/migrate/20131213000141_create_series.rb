class CreateSeries < ActiveRecord::Migration[4.2]
  def change
    create_table :series do |t|
      t.string :name
    end
  end
end

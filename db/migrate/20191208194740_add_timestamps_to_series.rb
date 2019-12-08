class AddTimestampsToSeries < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :series, default: Date.new(2013,11,18)
    change_column_default :series, :created_at, nil
    change_column_default :series, :updated_at, nil
  end
end

class AddIsnExtension < ActiveRecord::Migration[4.2]
  def change
  	enable_extension "isn"
  end
end

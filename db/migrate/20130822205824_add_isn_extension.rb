class AddIsnExtension < ActiveRecord::Migration
  def change
  	enable_extension "isn"
  end
end

class SorceryCore < ActiveRecord::Migration[4.2]
  def self.up
    create_table :users do |t|
      t.string  :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string  :first_name
      t.string  :last_name
      t.boolean :admin, default: false
      t.string  :localization, default: 'fr'
      t.string  :crypted_password, :default => nil
      t.string  :salt,             :default => nil
      t.text    :default_header
      t.text    :default_footer

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string     :title
      t.string     :volume
      t.string     :author
      t.string     :editor
      t.boolean    :read, default: false
      t.string     :isbn
      t.attachment :cover
      t.integer    :serie_id

      t.timestamps
    end
  end
end

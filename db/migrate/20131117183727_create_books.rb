class CreateBooks < ActiveRecord::Migration[4.2]
  def change
    create_table :books do |t|
      t.string     :title
      t.string     :tome
      t.string     :author
      t.string     :editor
      t.boolean    :read, default: true
      t.string     :isbn
      #t.attachment :cover
      t.datetime   :release_date
      t.string     :keywords
      t.integer    :serie_id

      t.timestamps
    end

    add_index :books, :isbn
    add_index :books, :serie_id
    add_index :books, :author
    add_index :books, :editor
  end
end

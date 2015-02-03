class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :intro
      t.date :release_date
      t.string :slug

      t.timestamps null: false
    end
    add_index :books, :title, unique: true
    add_index :books, :release_date
    add_index :books, :slug, unique: true
  end
end

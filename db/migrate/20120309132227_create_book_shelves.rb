class CreateBookShelves < ActiveRecord::Migration
  def change
    create_table :book_shelves do |t|
      t.references :user
      t.references :book

      t.timestamps
    end
    add_index :book_shelves, :user_id
    add_index :book_shelves, :book_id
  end
end

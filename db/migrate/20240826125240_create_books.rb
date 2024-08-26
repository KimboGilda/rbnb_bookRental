class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.text :genre
      t.float :price
      t.boolean :availability
      t.timestamps
    end
  end
end

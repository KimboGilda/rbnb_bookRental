class AddCoverImageToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :cover_image, :text
  end
end

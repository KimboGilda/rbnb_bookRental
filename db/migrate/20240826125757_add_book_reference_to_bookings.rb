class AddBookReferenceToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :book, null: false, foreign_key: true
  end
end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Destroying all data"
Booking.destroy_all
Review.destroy_all
Book.destroy_all
User.destroy_all
puts "All data destroyed"

user_01 = User.create!(
    email: "mariasarapova@gmail.com",
    password: "wimbledon13",
    first_name: 'Maria',
    last_name: "Sarapova",
  )

  user_02 = User.create!(
    email: "emmagoldman@gmail.com",
    password: "aa13uk",
    first_name: 'Emma',
    last_name: "Goldman",
  )


book_01 = Book.create!(
    title: 'The Hobbit',
    author: 'John Ronald Reuel Tolkien',
    genre: 'Fantasy',
    price: 50.5,
    availability: false,
    user: user_01
  )

  book_02 =Book.create!(
    title: 'The master and margarita',
    author: 'M.Bulgakov',
    genre: 'Fantasy',
    price: 30.5,
    availability: true,
    user: user_01
  )


  book_03 = Book.create!(
    title: 'The Impossible',
    author: 'Erri De Luca',
    genre: 'Action',
    price: 20,
    availability: true,
    user: user_02
  )

  book_04 = Book.create!(
    title: 'War and Peace',
    author: 'Leo Tolstoy',
    genre: 'Historical Novel',
    price: 30,
    availability: false,
    user: user_01
  )

  book_05 = Book.create!(
    title: 'The Idiot',
    author: 'Fyodor Dostoevsky',
    genre: 'Novel',
    price: 25,
    availability: true,
    user: user_02
  )

  book_06 =Book.create!(
    title: 'Children of the day',
    author: 'Eduardo Galleano',
    genre: 'Novel',
    price: 20,
    availability: false,
    user: user_02
  )3

  Booking.create!(
    start_date: Date.today,
    end_date: Date.today + 3.days,
    user: user_01,
    book: book_05
  )


# #   Booking.create!(
# #     start_date: "2024-08-23 16:13:09.809807 +0200",
# #     end_date: "2024-08-26 16:53:09.809807 +0200",
# #     user: user_02,
# #     book: book_01
# #   )

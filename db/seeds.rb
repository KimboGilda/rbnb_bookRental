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
    user: user_01,
    summary: "The Hobbit is set in Middle-earth and follows home-loving Bilbo Baggins, the hobbit of the title, who joins the wizard Gandalf and the thirteen dwarves of Thorin's Company, on a quest to reclaim the dwarves' home and treasure from the dragon Smaug."
  )

  book_02 = Book.create!(
    title: 'The master and margarita',
    author: 'M.Bulgakov',
    genre: 'Fantasy',
    price: 30.5,
    availability: true,
    user: user_01,
    summary: "One hot spring, the devil arrives in Moscow, accompanied by a retinue that includes a beautiful naked witch and an immense talking black cat with a fondness for chess and vodka. The visitors quickly wreak havoc in a city that refuses to believe in either God or Satan. But they also bring peace to two unhappy Muscovites: one is the Master, a writer pilloried for daring to write a novel about Christ and Pontius Pilate; the other is Margarita, who loves the Master so deeply that she is willing literally to go to hell for him. What ensues is a novel of inexhaustible energy, humor, and philosophical depth, a work whose nuances emerge for the first time in Diana Burgin's and Katherine Tiernan O'Connor's splendid English version."
  )


  book_03 = Book.create!(
    title: 'The Impossible',
    author: 'Erri De Luca',
    genre: 'Action',
    price: 20,
    availability: true,
    user: user_02,
    summary: "One morning, high in the Dolomite mountains, two hikers are some distance apart. The path in places is narrow and perilous. One man falls to his death. The other sounds the alarm. But these men are not strangers. Members of the same revolutionary group forty years earlier, the first had betrayed the second, who must now hold his own against a young magistrate intent upon having him tried for murder.Was their meeting an improbable encounter, or an impossible coincidence?
    Impossible is a brilliant hymn to the lure of the mountains, an engrossing illumination of political brotherhood, and also the subtlest of detective stories."
  )

  book_04 = Book.create!(
    title: 'War and Peace',
    author: 'Leo Tolstoy',
    genre: 'Historical Novel',
    price: 30,
    availability: false,
    user: user_01,
    summary: "War and Peace broadly focuses on Napoleon’s invasion of Russia in 1812 and follows three of the most well-known characters in literature: Pierre Bezukhov, the illegitimate son of a count who is fighting for his inheritance and yearning for spiritual fulfillment; Prince Andrei Bolkonsky, who leaves his family behind to fight in the war against Napoleon; and Natasha Rostov, the beautiful young daughter of a nobleman who intrigues both men.
    As Napoleon’s army invades, Tolstoy brilliantly follows characters from diverse backgrounds—peasants and nobility, civilians and soldiers—as they struggle with the problems unique to their era, their history, and their culture. And as the novel progresses, these characters transcend their specificity, becoming some of the most moving—and human—figures in world literature.
    "
  )

  book_05 = Book.create!(
    title: 'The Idiot',
    author: 'Fyodor Dostoevsky',
    genre: 'Novel',
    price: 25,
    availability: true,
    user: user_02,
    summary: "Returning to Russia from a sanitarium in Switzerland, the Christ-like epileptic Prince Myshkin finds himself enmeshed in a tangle of love, torn between two women—the notorious kept woman Nastasya and the pure Aglaia—both involved, in turn, with the corrupt, money-hungry Ganya. In the end, Myshkin’s honesty, goodness, and integrity are shown to be unequal to the moral emptiness of those around him. In her revision of the Garnett translation, Anna Brailovsky has corrected inaccuracies wrought by Garnett’s drastic anglicization of the novel, restoring as much as possible the syntactical structure of the original story."
  )

  book_06 =Book.create!(
    title: 'Children of the day',
    author: 'Eduardo Galleano',
    genre: 'Novel',
    price: 20,
    availability: false,
    user: user_02,
    summary: "This book is shaped like a calendar. Each day brings with it a story: a journey, feast or tragedy that really happened on that date, from all possible years and all corners of the world. From Abdul Kassem Ismail, the tenth-century Persian who never went anywhere without his library - all seventeen thousand books of it, on four hundred camels; to the Brazilian city of Sorocaba, which on February 8 1980 responded to the outlawing of public kissing by becoming one huge kissodrome; to July 1 2008, the day the US government decided to remove Nelson Mandela's name from its list of dangerous terrorists, Children of the Days takes aim at the pretensions of official history and illuminates moments and heroes that we have all but forgotten. Through this shimmering historical mosaic runs a common thread, one that joins humanity's darkest hours to its sweetest victories. Children of the Days is the story of our lives."
  )

  # Booking.create!(
  #   start_date: Date.today,
  #   end_date: Date.today + 3.days,
  #   user: user_01,
  #   book: book_05
  # )


# #   Booking.create!(
# #     start_date: "2024-08-23 16:13:09.809807 +0200",
# #     end_date: "2024-08-26 16:53:09.809807 +0200",
# #     user: user_02,
# #     book: book_01
# #   )

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    name: "F. Scott Fitzgerald",
    image: "https://images.gr-assets.com/authors/1517864008p5/3190.jpg",
    books: [
      {
        title: "The Great Gatsby",
        image: "https://images.gr-assets.com/books/1490528560l/4671.jpg"
      },
      {
        title: "The Curios Case of Benjamin Button",
        image: "https://images.gr-assets.com/books/1331235364l/747746.jpg"
      }
    ]
  },
  {
    name: "Stephen King",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Stephen_King%2C_Comicon.jpg/440px-Stephen_King%2C_Comicon.jpg",
    books: [
      {
        title: "Carrie",
        image: "https://upload.wikimedia.org/wikipedia/en/3/31/Carrienovel.jpg"
      },
      {

        title: "The Shining",
        image: "https://upload.wikimedia.org/wikipedia/en/4/4c/Shiningnovel.jpg"
      }, {
        title: "The Stand",
        image: "https://upload.wikimedia.org/wikipedia/en/9/96/The_Stand_cover.jpg"
      }

    ]
  },
  {
    name: "J K Rowling",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/J._K._Rowling_2010.jpg/440px-J._K._Rowling_2010.jpg",
    books: [
      { title: "The Philosopher's Stone",
        image: "https://upload.wikimedia.org/wikipedia/en/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg" },
      { title: "The Chamber of Secrets",
        image: "https://upload.wikimedia.org/wikipedia/en/5/5c/Harry_Potter_and_the_Chamber_of_Secrets.jpg" },
      { title: "The Prisoner of Azkaban",
        image: "https://upload.wikimedia.org/wikipedia/en/a/a0/Harry_Potter_and_the_Prisoner_of_Azkaban.jpgj" },
      { title: "The Goblet of Fire",
        image: "https://upload.wikimedia.org/wikipedia/en/c/c7/Harry_Potter_and_the_Goblet_of_Fire.jpg" },
      { title: "The Order of the Phoenix",
        image: "https://upload.wikimedia.org/wikipedia/en/7/70/Harry_Potter_and_the_Order_of_the_Phoenix.jpg" },
      { title: "The Half-Blood Prince",
        image: "https://upload.wikimedia.org/wikipedia/en/f/f0/Harry_Potter_and_the_Half-Blood_Prince.jpg" },
      { title: "The Deathly Hallows",
        image: "https://upload.wikimedia.org/wikipedia/en/a/a9/Harry_Potter_and_the_Deathly_Hallows.jpg" }
    ]
  }
].each do |author|
  resource = Author.create!(name: author[:name], url_image: author[:image])
  author[:books].each do |book|
    Book.create!(title: book[:title], url_image: book[:image], author: resource)
  end
end

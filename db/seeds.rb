require 'open-uri'

User.create(user_name: "Nhat Quang",
  email: "quangdvn@gmail.com",
  password: "123456",
  gender: 1,
  age: 22)

User.create(user_name: "Vu Duc",
  email: "test1@gmail.com",
  password: "123456",
  gender: 1,
  age: 22)

User.create(user_name: "Anh Khoa",
  email: "test2@gmail.com",
  password: "123456",
  gender: 1,
  age: 22)

User.create(user_name: "Minh Cong",
  email: "test3@gmail.com",
  password: "123456",
  gender: 1,
  age: 22)

User.create(user_name: "Massashi Sanada",
  email: "test4@gmail.com",
  password: "123456",
  gender: 1,
  age: 22)

User.create(user_name: "Quang Huy",
  email: "test5@gmail.com",
  password: "123456",
  gender: 1,
  age: 22)

Category.create(name: "web")

Category.create(name: "mobile")

Category.create(name: "ai")

Category.create(name: "security")

Category.create(name: "networking")

Category.create(name: "devops")

downloaded_photo_1 = URI.open("https://wallpapercave.com/wp/wp2506797.jpg")
downloaded_photo_2 = URI.open("https://images2.alphacoders.com/556/thumb-350-556062.jpg")
downloaded_photo_3 = URI.open("https://cdn.wallpapersafari.com/1/89/6jwWyq.jpg")
downloaded_photo_4 = URI.open("https://www.99images.com/photos/wallpapers/anime/anime-natureandroid-iphone-desktop-hd-backgrounds-wallpapers-1080p-4k-ntuv3.jpg")
downloaded_photo_5 = URI.open("https://wallpapercave.com/wp/wp2506797.jpg")
downloaded_photo_6 = URI.open("https://images2.alphacoders.com/556/thumb-350-556062.jpg")
downloaded_photo_7 = URI.open("https://cdn.wallpapersafari.com/1/89/6jwWyq.jpg")
downloaded_photo_8 = URI.open("https://www.99images.com/photos/wallpapers/anime/anime-natureandroid-iphone-desktop-hd-backgrounds-wallpapers-1080p-4k-ntuv3.jpg")

##### 1 ######
article1 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 3,
  categories: [Category.find(1), Category.find(2), Category.find(3), Category.find(4)])

article1.featured_image.attach(io: downloaded_photo_1, filename: "image1.jpg")

##### 2 ######
article2 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 2,
  categories: [Category.find(1), Category.find(4)])

article2.featured_image.attach(io: downloaded_photo_2, filename: "image2.jpg")

##### 3 ######
article3 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 1,
  categories: [Category.find(2)])

article3.featured_image.attach(io: downloaded_photo_3, filename: "image3.jpg")

##### 4 ######
article4 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 4,
  categories: [Category.find(3), Category.find(4), Category.find(1)])

article4.featured_image.attach(io: downloaded_photo_4, filename: "image4.jpg")

##### 5 ######
article5 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(3), Category.find(4), Category.find(2)])

article5.featured_image.attach(io: downloaded_photo_5, filename: "image5.jpg")

##### 6 ######
article6 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(3), Category.find(4), Category.find(1), Category.find(2)])

article6.featured_image.attach(io: downloaded_photo_6, filename: "image6.jpg")

##### 7 ######
article7 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(3), Category.find(4), Category.find(1), Category.find(6), Category.find(5)])

article7.featured_image.attach(io: downloaded_photo_7, filename: "image7.jpg")

##### 8 ######
article8 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(4), Category.find(2), Category.find(6)])

article8.featured_image.attach(io: downloaded_photo_8, filename: "image8.jpg")

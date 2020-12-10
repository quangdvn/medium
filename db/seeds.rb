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

downloaded_photo = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-#{rand(1..20)}_thumb.jpg")
downloaded_photo_1 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-1_thumb.jpg")
downloaded_photo_2 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-2_thumb.jpg")
downloaded_photo_3 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-3_thumb.jpg")
downloaded_photo_4 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-4_thumb.jpg")
downloaded_photo_5 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-5_thumb.jpg")
downloaded_photo_6 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-6_thumb.jpg")
downloaded_photo_7 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-7_thumb.jpg")
downloaded_photo_8 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-8_thumb.jpg")
downloaded_photo_9 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-9_thumb.jpg")
downloaded_photo_10 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-10_thumb.jpg")
downloaded_photo_11 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-11_thumb.jpg")
downloaded_photo_12 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-12_thumb.jpg")
downloaded_photo_13 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-13_thumb.jpg")
downloaded_photo_14 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-14_thumb.jpg")
downloaded_photo_15 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-15_thumb.jpg")
downloaded_photo_16 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-16_thumb.jpg")
downloaded_photo_17 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-17_thumb.jpg")
downloaded_photo_18 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-18_thumb.jpg")
downloaded_photo_19 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-19_thumb.jpg")
downloaded_photo_20 = URI.open("http://s3.amazonaws.com/redqteam.com/tripfinder-images/hotel-20_thumb.jpg")

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

##### 9 ######
article9 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(5), Category.find(2)])

article9.featured_image.attach(io: downloaded_photo_9, filename: "image9.jpg")

##### 10 ######
article10 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(2), Category.find(1), Category.find(3)])

article10.featured_image.attach(io: downloaded_photo_10, filename: "image8.jpg")

##### 11 ######
article11 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(5)])

article11.featured_image.attach(io: downloaded_photo_11, filename: "image11.jpg")

##### 12 ######
article12 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(6), Category.find(1)])

article12.featured_image.attach(io: downloaded_photo_12, filename: "image12.jpg")

##### 13 ######
article13 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(5), Category.find(2)])

article13.featured_image.attach(io: downloaded_photo_13, filename: "image13.jpg")

##### 14 ######
article14 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(2), Category.find(1), Category.find(3)])

article14.featured_image.attach(io: downloaded_photo_14, filename: "image14.jpg")

##### 15 ######
article15 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(5)])

article15.featured_image.attach(io: downloaded_photo_15, filename: "image15.jpg")

##### 16 ######
article16 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(6), Category.find(1)])

article16.featured_image.attach(io: downloaded_photo_16, filename: "image16.jpg")

##### 17 ######
article17 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(5), Category.find(2)])

article17.featured_image.attach(io: downloaded_photo_17, filename: "image17.jpg")

##### 18 ######
article18 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(2), Category.find(1), Category.find(3)])

article18.featured_image.attach(io: downloaded_photo_18, filename: "image18.jpg")

##### 19 ######
article19 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(5)])

article19.featured_image.attach(io: downloaded_photo_19, filename: "image19.jpg")

##### 20 ######
article20 = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: rand(1...4),
  categories: [Category.find(6), Category.find(1)])

article20.featured_image.attach(io: downloaded_photo_20, filename: "image20.jpg")

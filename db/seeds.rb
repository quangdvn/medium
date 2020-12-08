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

article = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 3,
  categories: [Category.find(1), Category.find(2), Category.find(3), Category.find(4)])

article.featured_image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/1.jpg')), filename: "1.jpg")

article = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 2,
  categories: [Category.find(1), Category.find(4)])

article.featured_image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/2.png')), filename: "2.png")

article = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 1,
  categories: [Category.find(2)])

article.featured_image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/3.jpg')), filename: "3.jpg")

article = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 4,
  categories: [Category.find(3), Category.find(4), Category.find(1)])

article.featured_image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/4.jpg')), filename: "4.jpg")

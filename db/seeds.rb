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

Category.create(name: "web")

Category.create(name: "mobile")

Category.create(name: "ai")

Category.create(name: "security")

Category.create(name: "networking")

Category.create(name: "devops")

categories = []
6.times do |index|
  categories << Category.find(index + 1)
end

15.times do |index|
  article = Article.create(title: Faker::Quote.famous_last_words,
  detail: Faker::Lorem.paragraph(sentence_count: rand(30...40), supplemental: true, random_sentences_to_add: rand(5..10)),
  author_id: 1 + rand(4),
  categories: categories.sample(1 + rand(4)))

  article.featured_image.attach(io: File.open(File.join(Rails.root, "app/assets/images/#{index % 5 + 1}.jpg")), filename: "#{index % 5 + 1}.jpg")
end

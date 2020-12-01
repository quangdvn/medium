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

Category.create(name: "Web")

Category.create(name: "Mobile")

Category.create(name: "AI")

Category.create(name: "Security")

Category.create(name: "Networking")

Category.create(name: "DevOps")

50.times do |n|
  title = Faker::Quote.famous_last_words
  detail = Faker::Lorem.paragraph(sentence_count: rand(10...20), supplemental: true, random_sentences_to_add: rand(5..10))
  author_id = rand(1...6)
  category_id = rand(1...6)

  Article.create(title: title,
    detail: detail,
    author_id: author_id,
    category_id: category_id)
end

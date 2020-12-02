class Article < ApplicationRecord
  belongs_to :author, class_name: User.name, foreign_key: :author_id
  has_and_belongs_to_many :categories

  ARTICLE_PARAMS = [:title, :detail, categories: [:name]].freeze

  validates :author_id, presence: true
  validates :title, presence: true, length: {minimum: 10, maximum: 100}
  validates :detail, presence: true, length: {minimum: 10, maximum: 5000}
end

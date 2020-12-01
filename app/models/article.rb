class Article < ApplicationRecord
  belongs_to :author, class_name: User.name, foreign_key: :author_id
  belongs_to :category

  ARTICLE_CREATE_PARAMS = %i(category_id title detail).freeze
  ARTICLE_UPDATE_PARAMS = %i(title detail).freeze

  validates :author_id, presence: true
  validates :category_id, presence: true
  validates :title, presence: true, length: {minimum: 10, maximum: 100}
  validates :detail, presence: true, length: {minimum: 10, maximum: 5000}
end

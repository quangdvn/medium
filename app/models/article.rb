class Article < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :author, class_name: User.name, foreign_key: :author_id
  has_and_belongs_to_many :categories
  has_many :comments
  has_one_attached :featured_image

  ARTICLE_PARAMS = [:title, :detail, :featured_image, categories: [:name]].freeze

  validates :author_id, presence: true
  validates :title, presence: true, length: {minimum: 10, maximum: 100}
  validates :detail, presence: true, length: {minimum: 10, maximum: 5000}

  def get_image_url
    url_for(self.featured_image)
  end
end

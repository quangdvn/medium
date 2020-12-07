class Article < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :author, class_name: User.name, foreign_key: :author_id
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories
  has_many :comments, dependent: :destroy
  has_one_attached :featured_image

  ARTICLE_PARAMS = [:title, :detail, :featured_image, :categories].freeze

  validates :author_id, presence: true
  validates :title, presence: true, length: {maximum: 100}
  validates :detail, presence: true, length: {maximum: 5000}

  scope :order_by_updated, ->{order updated_at: :desc}
  scope :suggestion, ->(article_id){ joins("INNER JOIN articles_categories ON articles_categories.article_id = articles.id")
                         .where("articles_categories.category_id in (
                                select category_id from articles_categories where article_id = ?) and article_id != ?",article_id, article_id)
                         .group("articles.id")
                         .order("count(articles.id) DESC, articles.updated_at DESC")
                         .limit(5) }
end

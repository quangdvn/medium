class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article, class_name: Article.name, foreign_key: :article_id

  COMMENT_PARAMS = [:detail, :article_id].freeze

  scope :get_comment_by_articles, ->(article_id){where(article_id: article_id)}

  validates :detail, presence: true, length: {minimum: 1, maximum: 5000}
end

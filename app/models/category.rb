class Category < ApplicationRecord
  has_and_belongs_to_many :articles

  validates :name, presence: true,
            length: {minimum: 2, maximum: 100}, 
            uniqueness: {case_sensitive: false}
end

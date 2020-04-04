class Review < ApplicationRecord
  # validates :rate, numericality: {
  #   less_than_or_equal_to: 5,
  #   greater_than_or_equal_to: 1
  # }
  belongs_to :subschool
  belongs_to :user

  def self.search(search)
    Review.where(['content LIKE(?)', "%#{search}%"])
  end
end

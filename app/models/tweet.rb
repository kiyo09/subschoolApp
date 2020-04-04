class Tweet < ApplicationRecord
  belongs_to :subschool
  belongs_to :user
  has_many :comments 

  def self.search(search)
    Tweet.where(['tweet LIKE(?)', "%#{search}%"])
  end
end

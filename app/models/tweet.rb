class Tweet < ApplicationRecord
  belongs_to :subschool
  belongs_to :user
  has_many :comments 
end

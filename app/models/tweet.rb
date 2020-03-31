class Tweet < ApplicationRecord
  belongs_to :subschool
  has_many :comments 
end

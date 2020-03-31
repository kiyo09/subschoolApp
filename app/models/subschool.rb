class Subschool < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :reviews
  has_many :tweets
end

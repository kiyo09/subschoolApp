class Subschool < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :reviews
  has_many :tweets
  has_many :stag_relations
  has_many :stags, through: :stag_relations
  # accepts_nested_attributes_for :SubscTagRelations, allow_destroy: true
end

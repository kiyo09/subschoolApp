class Subschool < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :reviews
  has_many :tweets
  has_many :stag_relations
  has_many :stags, through: :stag_relations
  
  def self.search(search)
    return Subschool.all unless search
    # Subschool.includes(:tweets).where(['name LIKE(?) OR tweets.tweet LIKE(?)' , "%#{search}%", "%#{search}%"]).references(:tweets)
    # Subschool.where(['name LIKE(?) OR id LIKE(?)', "%#{search}%", "%#{search}%"])
    Subschool.includes(:tweets, :stags, :reviews).where(['name LIKE(?) OR tweets.tweet LIKE(?) OR stags.tag LIKE(?) OR reviews.content LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"]).references(:tweets, :reviews)
    # Subschool.includes(:tweets, :reviews).where(['name LIKE(?) OR tweets.tweet LIKE(?) OR reviews.content LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"]).references(:tweets, :reviews)
  end

end

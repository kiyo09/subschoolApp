class Room < ApplicationRecord
  has_many :userRooms
  has_many :users,  through:  :userRooms
end

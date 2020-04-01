class Stag < ApplicationRecord
  has_many :stag_relations, dependent: :destroy
  has_many :subschools, through: :stag_relations, dependent: :destroy
end

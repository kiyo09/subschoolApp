class Message < ApplicationRecord
  t.string :content
  t.string :image
  t.references :group, foreign_key: true
  t.references :user, foreign_key: true
end

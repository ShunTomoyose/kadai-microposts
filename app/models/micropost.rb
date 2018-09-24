class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user
  # has_many :reverses_of_favorites, class_name: 'Favorite', foreign_key: 'micropost_id'
  
  has_many :favorites, dependent: :destroy
  
end

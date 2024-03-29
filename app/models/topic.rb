class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :title, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
  def self.search(search)
    if search
      where(['description LIKE ?', "%#{search}%"])
    else
      all
    end
  end
  def favuser_list(topic_id)
    User.where(id: Favorite.where(topic_id: topic_id).select("user_id"))
  end
end
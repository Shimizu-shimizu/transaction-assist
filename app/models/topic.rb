class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
  def self.search(search)
    return Topic.all unless search
    Topic.where(['description LIKE ?', "%#{search}%"])
  end
end

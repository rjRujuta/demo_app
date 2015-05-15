class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :bname, presence: true, length: { maximum: 100 }
  validates :bauthor, presence: true, length: { maximum: 150 }
  
end

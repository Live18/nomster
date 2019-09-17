class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :comments
  validates :caption, presence: true

  mount_uploader :picture, PictureUploader
end

class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :name, length: { minimum: 4}, presence: true
  validates :address, presence: true
  validates :description, presence: true
end

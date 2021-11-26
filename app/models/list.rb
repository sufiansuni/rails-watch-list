class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :image

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
  # validates :image_url, url: true, allow_blank: true
end

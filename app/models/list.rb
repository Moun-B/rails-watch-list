class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end

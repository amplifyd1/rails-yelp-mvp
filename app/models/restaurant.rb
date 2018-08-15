class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["Indian", "Chinese", "Japanese", "English", "French", "Italian", "Chech", "Thai", "Greek"] }
end

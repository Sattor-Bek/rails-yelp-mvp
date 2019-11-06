class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["french", "japanese", "chinese", "italian", "belgian"] }
  validates :phone_number, length: { minimum: 2 }
  has_many :reviews, dependent: :destroy
end
